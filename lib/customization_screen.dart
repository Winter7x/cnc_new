import 'package:flutter/material.dart';

class CustomizationScreen extends StatelessWidget {
  CustomizationScreen({super.key});

  // Define text styles
  static const TextStyle titleTextStyle = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.deepPurple, fontSize: 24);

  static const TextStyle subtitleTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 71, 164, 221),
      fontSize: 20);

  static const TextStyle subtitle2TextStyle =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 16);

  static const TextStyle bodyTextStyle = TextStyle(
      fontWeight: FontWeight.normal, color: Colors.blueGrey, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customization'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: textItems.map((item) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['text'],
                    style: item['style'],
                  ),
                  const SizedBox(height: 10), // Space between items
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  // List of text items with their respective styles
  // List of text items with their respective styles// List of text items with their respective styles
  // List of text items with their respective styles
  // List of text items with their respective styles
  final List<Map<String, dynamic>> textItems = [
    {
      'text': 'Teamcenter PLM Customization Components & Architecture',
      'style': titleTextStyle
    },
    {
      'text':
          'Teamcenter PLM customization architecture is organized based on its technical framework, which consists of three main layers:',
      'style': bodyTextStyle
    },
    {'text': '• Server Customization:', 'style': subtitleTextStyle},
    {
      'text':
          '  - The server layer is the foundation of all customization efforts. This layer is responsible for executing most business logic, making it critical for all PLM transactions.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - It interacts with the database using the Persistence Object Model (POM) API, allowing seamless data management and retrieval.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - Customization in this layer is performed through the C-based Integration Toolkit (ITK), which offers numerous application programming interfaces (APIs) for enhancing standard functionalities.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - In addition to the ITK, the Teamcenter environment supports Service-Oriented Architecture (SOA) customization and Business Modeler Integrated Development Environment (BMIDE) extensions, both of which allow for tailored server-side enhancements.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - Most BMIDE extensions are implemented on the server side to override or modify object behavior based on specific business requirements, which can only be achieved at this layer.',
      'style': bodyTextStyle
    },
    {'text': '• Web Layer:', 'style': subtitleTextStyle},
    {
      'text':
          '  - The web layer serves as the Teamcenter deployment layer using J2EE technology. It facilitates communication between the server and client, ensuring that data flows smoothly and efficiently.',
      'style': bodyTextStyle
    },
    {'text': '• Client Layer:', 'style': subtitleTextStyle},
    {
      'text':
          '  - The client layer encompasses the user interface, focusing on how data is presented to the end-users. This layer manages the results obtained from server requests, allowing users to interact with PLM objects easily.',
      'style': bodyTextStyle
    },
    {'text': '• SOA Client and Server:', 'style': subtitleTextStyle},
    {
      'text':
          '  - The SOA component consists of the API framework that enables Teamcenter to integrate with external applications and custom clients. This architecture supports flexibility and scalability in enterprise environments.',
      'style': bodyTextStyle
    },
    {'text': '• FMS (File Management System):', 'style': subtitleTextStyle},
    {
      'text':
          '  - FMS acts as the resource layer that facilitates actual file transfers between the client and server. It ensures that files are managed effectively and securely, providing a streamlined process for accessing essential documents and data.',
      'style': bodyTextStyle
    },
    {'text': 'Teamcenter PLM Customization Areas', 'style': titleTextStyle},
    {'text': '• Server Customization:', 'style': subtitleTextStyle},
    {
      'text':
          '  - Server-side customization is the most common type of customization performed in Teamcenter PLM. All business logic is handled within this layer, making it essential for processing requests and transactions.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - The ITK provides a comprehensive set of APIs that facilitate various customizations for business processes, ensuring that Teamcenter can adapt to specific organizational needs.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - The ITK includes extension mechanisms that allow developers to plug in custom code based on various events and statuses related to Teamcenter objects.',
      'style': bodyTextStyle
    },
    {'text': '• Portal Customization:', 'style': subtitleTextStyle},
    {
      'text':
          '  - The Teamcenter PLM Client layer is built using Java Foundation Classes (JFC) and the Eclipse Standard Widget Toolkit (SWT). While both frameworks can be utilized for customization, it is recommended to use SWT to align with Teamcenter’s technology roadmap.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - Portal customization can involve extending out-of-the-box (OOTB) plugins or developing custom plugins to enhance user experiences and functionalities within the client interface.',
      'style': bodyTextStyle
    },
    {'text': '• Web or Thin Client Customization:', 'style': subtitleTextStyle},
    {
      'text':
          '  - Customization of the web or thin client is focused on the Teamcenter PLM Web client, which provides a standard web interface for viewing and editing PLM objects directly within a browser.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - The web client utilizes asynchronous JavaScript and XML (AJAX) technology, allowing for dynamic data loading and a more interactive user experience. HTML pages are rendered using JavaScript, which manages data in response to user actions.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - Both client-to-server requests and server-to-client responses in the thin client are standard HTTP responses, ensuring compatibility with web standards.',
      'style': bodyTextStyle
    },
    {'text': '• SOA Customization:', 'style': subtitleTextStyle},
    {
      'text':
          '  - SOA customization refers to the standard services provided by Teamcenter for integration with third-party systems and custom client applications. This architecture enables flexibility in how Teamcenter interacts with other enterprise solutions.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - Teamcenter’s SOA framework allows developers to create custom services that can be tailored to meet specific integration requirements.',
      'style': bodyTextStyle
    },
    {'text': '• BMIDE Extension Customization:', 'style': subtitleTextStyle},
    {
      'text':
          '  - BMIDE provides a range of extension mechanisms for server-side customization within Teamcenter PLM. This allows developers to implement desired behaviors that cater to specific business processes.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - Examples of BMIDE extensions include pre-action or post-action operations for business objects and defining runtime properties. These extensions are implemented in the BMIDE environment using C or C++ code primarily with ITK APIs.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - The BMIDE framework automatically generates stub code and required classes, making it easier for developers to focus on implementing the core logic of their extensions.',
      'style': bodyTextStyle
    },
    {'text': '• Dispatcher Module Customization:', 'style': subtitleTextStyle},
    {
      'text':
          '  - The Dispatcher module can be customized to manage translation behaviors required for file processing within Teamcenter PLM. This includes implementing a Dispatcher client for extracting and loading translated files.',
      'style': bodyTextStyle
    },
    {
      'text':
          '  - The Dispatcher Client Framework is built on Teamcenter’s SOA services, utilizing most of the OOTB SOA APIs along with specific Dispatcher APIs to encapsulate complex calls, simplifying the customization process.',
      'style': bodyTextStyle
    },
    {'text': '------------------------', 'style': bodyTextStyle},
  ];
}
