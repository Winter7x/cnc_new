import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
  const Developer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developer'),
      ),
      body: ListView.builder(
        itemCount: qaList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              title: Text(
                qaList[index]['question']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey, // Darker color for question
                ),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: const Color(0xFF2E2E2E), // Dark background for code
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      qaList[index]['answer']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'monospace', // Monospace font
                        color: Colors.greenAccent, // Code-like color
                        height: 1.5, // Line height for readability
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// Sample data for questions and answers
const List<Map<String, String>> qaList = [
  {
    'question': 'ITK Programm for Teamcenter Login',
    'answer': '''#include<stdio.h>
#include<tc/tc.h>
#include<stdlib.h>
#include<string.h>
#include<tc/tc.h>
#include<stdio.h>
#include<tccore/item.h>
#include<tccore/aom_prop.h>
#include<tccore/aom.h>
#include<property/nr.h>
#include<std/ib.h>
#include<fclasses/tc_string.h>
#include <stdlib.h>
#include <fstream>
#include <string>
#include <sstream>
#include <iostream>
#include <epm/epm_toolkit_tc_utils.h>

int ITK_user_main(int argc,char *argv[])
{
int Ifail=0;
char* cUser=NULL;
char* cPass=NULL;
char* cGrp=NULL;
cUser=lTK_ask_cli_argument("-u=");
cPass=lTK_ask_cli_argument("-p=");
cGrp=lTK_ask_cli_argument("-g=");
if(tc_strcmp(cUser, NULL) 0 | I tc_strcmp(cUser, "'9 == O I Itc_strcmp(cPass, NULL) == 0 | I tc_strcmp(cPass, '"9
| Itc_strcmp(cGrp, NULL) 01 1 tc_strcmp(cGrp, 0)
printf("TC login unsuccessfully");
else
Ifail=lTK_init_module(cUser,cPass,cGrp);
"infodba", "dba");
if
printf("TC login unsuccessfully");
else
printf("ln In TC login successfullf');
return 0;
}'''
  },
  {
    'question': 'What is Teamcenter?',
    'answer':
        'Teamcenter is a widely used PLM software developed by Siemens that serves as a central repository for managing product-related information and processes.'
  },
];
