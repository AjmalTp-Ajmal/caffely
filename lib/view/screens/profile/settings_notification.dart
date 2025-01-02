import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingsNotification extends HookWidget {
  const SettingsNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final switchselect = useState(true);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.keyboard_backspace_outlined),
            title: Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "Notification",
                  style: context.typography.textfieldbody,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Oder updates",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "New Coffe release",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Nearby Shop Alerts",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Reminders for Favorite Oders",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Upcoming events",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Weather based-Sugestions",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Rate and Reviwes Requets",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Referal Rewards",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Refunds and Cancelations",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Coffe tips and fun facts",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "App updates",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Switch(
                value: switchselect.value,
                activeColor: context.colors.buttonclr,
                activeTrackColor: context.colors.buttonclr,
                inactiveThumbColor: context.colors.primary,
                onChanged: (value) => switchselect.value = value,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
