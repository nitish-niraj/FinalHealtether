import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PermissionsSettings extends StatefulWidget {
  PermissionsSettings({super.key});

  @override
  State<PermissionsSettings> createState() => _PermissionsSettingsState();
}

class _PermissionsSettingsState extends State<PermissionsSettings> {
  bool light1 = false;
  bool light2 = false;
  bool light3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(6),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.close_rounded,
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'APP PERMISSIONS',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 94.0,
                    ),
                    child: SizedBox(
                      height: 5,
                      width: 54,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xff52CFAC),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 260,
                        child: Text(
                          'Contacts and Message Syncing',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Switch(
                        value: light1,
                        onChanged: (bool value) {
                          setState(() {
                            light1 = value;
                          });
                        },
                        trackColor: MaterialStatePropertyAll<Color>(
                            Colors.grey.shade300),
                        thumbColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Color(
                                0xff5351C7); // Color when the switch is active
                          }
                          return Colors
                              .grey; // Color when the switch is inactive
                        }),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 290,
                    child: Text(
                      'Allow access to your contacts and messaging app for a convenient and integrated experience.',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 260,
                        child: Text(
                          'Allow Camera Access',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Switch(
                        value: light1,
                        onChanged: (bool value) {
                          setState(() {
                            light1 = value;
                          });
                        },
                        trackColor: MaterialStatePropertyAll<Color>(
                            Colors.grey.shade300),
                        thumbColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Color(
                                0xff5351C7); // Color when the switch is active
                          }
                          return Colors
                              .grey; // Color when the switch is inactive
                        }),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 290,
                    child: Text(
                      "This is enable the app to use your device's camera for capturing photos of documents to upload medical records or documents securely within the app.",
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 260,
                        child: Text(
                          'Third-Party Permissions',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Switch(
                        value: light3,
                        onChanged: (bool value) {
                          setState(() {
                            light3 = value;
                          });
                        },
                        trackColor: MaterialStatePropertyAll<Color>(
                            Colors.grey.shade300),
                        thumbColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Color(
                                0xff5351C7); // Color when the switch is active
                          }
                          return Colors
                              .grey; // Color when the switch is inactive
                        }),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 290,
                    child: Text(
                      'Some features may require access to third-party services for enhanced functionality.',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
