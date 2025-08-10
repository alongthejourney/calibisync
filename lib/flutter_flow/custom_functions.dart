import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int? calculateCycleLength(
  DateTime startDate,
  DateTime prevDate,
) {
  return startDate.difference(prevDate).inDays;
}

List<DateTime> getPredictedPeriodDays(
  DateTime startDate,
  int cycleLength,
  int periodLength,
) {
  DateTime predictedStart = startDate.add(Duration(days: cycleLength));
  List<DateTime> predictedDays = [];
  for (int i = 0; i < periodLength; i++) {
    predictedDays.add(predictedStart.add(Duration(days: i)));
  }
  return predictedDays;
}

/// The calculation of the cycle length from the start date in days
int getCurrentCycleDay(
  DateTime cycleStartDate,
  int cycleLength,
) {
  final now = DateTime.now();
  final daysSinceStart = now.difference(cycleStartDate).inDays + 1;
//Loop back to startof cycleif necessary
  return (daysSinceStart % cycleLength == 0)
      ? cycleLength
      : daysSinceStart % cycleLength;
}

String? getGreeting() {
  String getGreeting(String name) {
    final now = DateTime.now();
    final hour = now.hour;

    String greeting;

    if (hour >= 5 && hour < 12) {
      greeting = 'Good morning';
    } else if (hour >= 12 && hour < 17) {
      greeting = 'Good afternoon';
    } else {
      greeting = 'Good evening';
    }

    // Fallback if name is null or empty
    if (name.isEmpty) {
      return greeting;
    } else {
      return '$greeting, $name';
    }
  }
  return null;
}

String? getPhaseNameOnly(
  DateTime? startDate,
  int? cycleLength,
) {
  String getPhaseOnly(DateTime startDate, int cycleLength) {
    final today = DateTime.now();
    final cycleDay = today.difference(startDate).inDays % cycleLength;

    if (cycleDay < 0) return "Unknown Phase";

    if (cycleDay <= 5) {
      return "Menstrual Phase";
    } else if (cycleDay <= 13) {
      return "Follicular Phase";
    } else if (cycleDay <= 16) {
      return "Ovulation Phase";
    } else {
      return "Luteal Phase";
    }
  }
  return null;
}

String? getCycleDay(
  DateTime? startDate,
  int? cycleLength,
) {
  String getCycleDay(DateTime startDate, int cycleLength) {
    final today = DateTime.now();
    final cycleDay = today.difference(startDate).inDays % cycleLength;

    if (cycleDay < 0) return "Unknown Day";

    return "Day ${cycleDay + 1}";
  }
  return null;
}

String? getRotatingPhaseInsight(
  DateTime? startDate,
  int? cycleLength,
) {
  String getRotatingPhaseInsight(DateTime startDate, int cycleLength) {
    final today = DateTime.now();
    final cycleDay = today.difference(startDate).inDays % cycleLength;
    final daysSinceStart = today.difference(startDate).inDays;
    final cycleIndex = (daysSinceStart ~/ cycleLength) % 12;

    final menstrual = [
      "Rest and recharge — your body is doing powerful work. 🌙",
      "Gentle movement and warm meals can ease discomfort. 🛁",
      "Today is for softness — be kind to yourself. 🤍",
      "Iron-rich foods and hydration are your allies. 💧",
      "Release what's no longer serving you. 🕊️",
      "Listen closely to your needs. Rest is productive. 🛏️",
      "A perfect day for journaling and self-reflection. 🖊️",
      "Take it easy — you’re allowed to slow down. 🌧️",
      "Wrap up in softness — cozy is your power today. 🧣",
      "Let your body lead the way. 💫",
      "Simplicity is sacred — one step at a time. 🪷",
      "You are safe to pause and breathe. 🫶"
    ];

    final follicular = [
      "Fresh energy — perfect time to start new things! 🌱",
      "Clarity is rising — plan, build, and grow. 📅",
      "You’re magnetic — move with purpose. ✨",
      "Tackle that to-do list — you’ve got momentum. ⚡",
      "Confidence is building — trust your gut. 💡",
      "Create freely — this is your expansion phase. 🎨",
      "This is your green light — go for it. ✅",
      "Make bold moves today — your mind is sharp. 🧠",
      "Sow seeds for what you want to grow. 🌸",
      "Your inner spark is lighting up — embrace it. 🔥",
      "Say yes to challenges — you’re stronger than you think. 💪",
      "Embrace change — your body is made for renewal. 🔄"
    ];

    final ovulation = [
      "You’re glowing — speak, lead, and shine. 🌟",
      "Peak energy! Show up big and bold. 💃",
      "Now’s the time to be seen and heard. 🎤",
      "Lean into connection — your charm is magnetic. ✨",
      "Crush that workout — your power is unmatched. 🏋️",
      "Brain and body are aligned — own it. 🧠🔥",
      "Be bold in your ideas and actions. 💥",
      "You radiate confidence — trust it. 💫",
      "A great day to network, pitch, or express. 🎯",
      "Channel your energy into something meaningful. 💌",
      "Enjoy this vibrant window — you earned it. 🌻",
      "You are a force — act like it. 🌪️"
    ];

    final luteal = [
      "Start slowing down — focus on nourishment. 🫐",
      "Balance your energy with rest and protein. 🥑",
      "Honor your emotions — they carry wisdom. 💭",
      "Say no to overwhelm — protect your peace. 🚫",
      "Give yourself grace — progress looks different here. 🌒",
      "Stay grounded — warm meals and cozy clothes help. 🧘",
      "Reflect and reset — your inner world matters. 📖",
      "You don’t have to do it all — ease is enough. 🤍",
      "Prioritize magnesium-rich meals and good sleep. 🌿",
      "Check in with yourself — what do you need most today? 🫶",
      "Prep for your next cycle with love, not pressure. 💗",
      "Let go of what drains you — your body is clearing space. 🍂"
    ];

    if (cycleDay < 0) {
      return "Track your cycle to unlock personalized insights.";
    }

    if (cycleDay <= 5) {
      return menstrual[cycleIndex];
    } else if (cycleDay <= 13) {
      return follicular[cycleIndex];
    } else if (cycleDay <= 16) {
      return ovulation[cycleIndex];
    } else {
      return luteal[cycleIndex];
    }
  }
  return null;
}

bool? isStartDateSet(DateTime? startDate) {
  bool isStartDateSet(DateTime? startDate) {
    return startDate != null;
  }
  return null;
}

String? getWorkoutMotivation() {
  String getWorkoutMotivation({
    required String phaseName,
    required int cycleDay,
    required bool hasLoggedWorkoutToday,
    required bool hasLoggedRestToday,
  }) {
    // Define rest-friendly days
    final restPhases = ['Menstrual'];
    final restDaysInLuteal = [24, 25, 26, 27, 28, 29, 30];

    final isRestPhase = (restPhases.contains(phaseName)) ||
        (phaseName == 'Luteal' && restDaysInLuteal.contains(cycleDay));

    // 1. If user worked out → celebrate
    if (hasLoggedWorkoutToday) {
      return 'Proud of you for showing up and moving your body today!';
    }

    // 2. If user rested AND it’s a rest phase → return gentle validation
    if (hasLoggedRestToday && isRestPhase) {
      return 'Resting is powerful — your body thanks you for listening.';
    }

    // 3. If it’s a rest phase, but user hasn’t logged anything → gently nudge rest
    if (isRestPhase && !hasLoggedWorkoutToday && !hasLoggedRestToday) {
      return 'Your body may need restoration. Gentle rest is just as important.';
    }

    // 4. Otherwise, return rotating daily message based on phase + cycle day
    final messages = {
      'Menstrual': {
        1: 'Honor your body — rest and replenish today.',
        2: 'Gentle movement like stretching or yoga is perfect right now.',
        3: 'Nourish yourself. A slow walk or breathwork counts.',
        4: 'Start moving with intention. Try mobility or light yoga.',
        5: 'You’re rebuilding. Short strength sets are a great step forward.',
      },
      'Follicular': {
        6: 'Energy is rising — bodyweight workouts or light lifting feel great.',
        7: 'You’re entering a power phase. Go for a walk or train lightly.',
        8: 'Strength is coming back. Try progressive overload today.',
        9: 'You’re sharper mentally — challenge your body and brain.',
        10: 'Try something new — your body is responsive and ready.',
        11: 'Cardio, strength, or a mix — listen to what feels exciting.',
        12: 'You’re close to your peak. Move with confidence today.',
      },
      'Ovulation': {
        13: 'Peak power! Lift heavy, sprint hard, go bold.',
        14: 'Crush your workout. Your hormones are primed for performance.',
        15: 'You’re still strong. Focus on form and intensity.',
      },
      'Luteal': {
        16: 'Begin to taper intensity slightly — honor where you’re at.',
        17: 'A slower strength session will feel best today.',
        18: 'Go for controlled movement. Pilates or slow reps are magic.',
        19: 'Your body may feel heavier — scale back if needed.',
        20: 'Mood shifts are normal. Gentle sweat helps regulate.',
        21: 'Try stretching, flow-based yoga, or a walk.',
        22: 'If you need rest — take it. Your body knows.',
        23: 'Lower impact movement is great right now.',
        24: 'Do a low-effort workout with high self-compassion.',
        25: 'Recovery is part of growth. Let yourself pause.',
        26: 'Try a light circuit — only if you feel up to it.',
        27: 'Don’t force it. Rest, reflect, and restore.',
        28: 'Honor the full cycle. A gentle walk or full rest is perfect.',
        29: 'Cycle reset approaching. Stretch and breathe.',
        30: 'Final day of this cycle. Move with softness and pride.',
      },
    };

    final phaseMessages = messages[phaseName] ?? {};
    return phaseMessages[cycleDay] ??
        'Listen to your body — it knows what it needs today.';
  }
  return null;
}
