import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SecuritySettings extends HookWidget {
  const SecuritySettings({super.key});

  @override
  Widget build(BuildContext context) {
    final switchselect = useState(true);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_backspace_outlined)),
        title: Text(
          "Security",
          style: context.typography.textfieldbody,
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Biometric Id",
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
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Face id",
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
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "SMS authentication",
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
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Google authenticator",
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
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Google authenticator",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.chevron_right))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 50),
                    backgroundColor: context.colors.subbuttonclr),
                child: Text(
                  "Change Password",
                  style: context.typography.buttontext,
                )),
          )
        ],
      )),
    );
  }
}
