import 'package:flutter/material.dart';

class GuideScreen extends StatelessWidget {
  GuideScreen({super.key});

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
        title: const Text('Guide'),
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
  // List of text items with their respective styles
  final List<Map<String, dynamic>> textItems = [
    {'text': '1. Understand the PLM Concept', 'style': titleTextStyle},
    {'text': 'What is PLM?', 'style': subtitleTextStyle},
    {
      'text':
          'PLM (Product Lifecycle Management) is an enterprise solution used to manage a product\'s entire lifecycle from the concept stage, through design and manufacturing, to service and disposal. PLM integrates people, data, processes, and business systems to streamline product development.',
      'style': bodyTextStyle
    },
    {'text': 'PLM Benefits:', 'style': subtitleTextStyle},
    {
      'text':
          '• Improved collaboration: Different teams (R&D, manufacturing, marketing, and service) can work together in real-time.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Data Management: Centralizes product data, making it easier to retrieve, update, and store securely.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Accelerated Time-to-Market: Streamlined processes and collaboration reduce delays.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Regulatory Compliance: PLM helps track compliance with industry regulations and standards.',
      'style': bodyTextStyle
    },
    {'text': 'Key PLM Phases:', 'style': subtitleTextStyle},
    {
      'text':
          '• Concept: Initial idea, business requirements, feasibility studies.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Design: Engineering design, CAD integration, design iteration.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Manufacturing: Creation of products, BOM (Bill of Materials), and supply chain integration.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Service: Maintenance and support during the product\'s lifecycle.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Disposal: End-of-life management, recycling, and disposal processes.',
      'style': bodyTextStyle
    },

    ///chapter 2

    {'text': '2. Teamcenter Architecture and Modules', 'style': titleTextStyle},

    {'text': 'A. Core Teamcenter Modules:', 'style': subtitleTextStyle},

    {'text': 'Structure Manager:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Overview: Allows users to create, manage, and edit product structures. Each product is broken down into components for efficient tracking and management.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• BOM (Bill of Materials): BOM management in Teamcenter enables efficient creation and editing of BOMs, tracking changes to parts, assemblies, and subassemblies.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Part Revision Management: Manage multiple revisions of parts and assemblies with full traceability.',
      'style': bodyTextStyle
    },

    {'text': 'Change Manager:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Change Processes: Handles product change processes such as Engineering Change Orders (ECOs), Change Requests (CRs), and Change Notices (CNs).',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Workflow Integration: Changes are typically routed through pre-defined workflows for approvals and reviews by different teams.',
      'style': bodyTextStyle
    },

    {'text': 'Document Management:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Overview: Manage documents and technical files (e.g., engineering drawings, CAD models, project documentation).',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Version Control: Tracks versions of documents to ensure the correct document is used for manufacturing or other purposes.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Access Control: Controls which users can access or edit particular documents based on their role.',
      'style': bodyTextStyle
    },

    {'text': 'Classification:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Overview: Enables classification of parts, products, and components based on various criteria like material, size, or function.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Component Reuse: Encourages the reuse of existing components to avoid duplication and reduce design time.',
      'style': bodyTextStyle
    },

    {'text': 'CAD Integration:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Supported CAD Tools: Integrates with popular CAD tools like Siemens NX, CATIA, SolidWorks, AutoCAD.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Design Data Management: Manage CAD models, assemblies, drawings, and ensure design revisions are properly handled within the PLM system.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Collaboration: Supports simultaneous design work by multiple engineers on the same product.',
      'style': bodyTextStyle
    },

    {'text': 'B. Extended Teamcenter Modules:', 'style': subtitleTextStyle},

    {
      'text': 'Manufacturing Process Planner (MPP):',
      'style': subtitle2TextStyle
    },
    {
      'text':
          '• Overview: Manages manufacturing planning tasks such as creating manufacturing BOMs (MBOMs), associating them with engineering BOMs (EBOMs), and defining assembly sequences.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Process Simulation: Visualize and simulate the assembly process using digital twins, ensuring manufacturability before production begins.',
      'style': bodyTextStyle
    },

    {'text': 'Teamcenter Requirements:', 'style': subtitle2TextStyle},
    {
      'text': '• Overview: Manages product requirements across the lifecycle.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Traceability: Links product requirements to design components, ensuring that all requirements are met during development.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Requirement Change Management: Facilitates changes to requirements and ensures they are communicated to stakeholders.',
      'style': bodyTextStyle
    },

    {'text': 'Teamcenter Visualization:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Digital Mockups: Provides lightweight, view-only versions of 3D models for non-engineering stakeholders.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• 3D Visualization: Enables team members to perform design reviews and quality checks without needing full CAD software.',
      'style': bodyTextStyle
    },

    {'text': 'Teamcenter Project Management:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Overview: Project planning, scheduling, and resource management.',
      'style': bodyTextStyle
    },
    {
      'text': '• Gantt Charts: Visualize project timelines and dependencies.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Task Management: Assign and track tasks, milestones, and deadlines.',
      'style': bodyTextStyle
    },

    //chapter 3 - 4
    ///
    ///
    ///
    ///
    ///
    ///
// List of text items with their respective styles
    {
      'text': '3. Configuration and Customization of Teamcenter',
      'style': titleTextStyle
    },

    {'text': 'A. Configuration Skills:', 'style': subtitleTextStyle},

    {
      'text': 'BMIDE (Business Modeler Integrated Development Environment):',
      'style': subtitle2TextStyle
    },
    {
      'text':
          '• Data Modeling: Create and configure business objects, classes, attributes, and relationships within Teamcenter.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Templates and Queries: Set up templates and queries that support specific business needs or data retrieval requirements.',
      'style': bodyTextStyle
    },

    {'text': 'Workflow Designer:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Custom Workflows: Design and configure workflows that define how processes (e.g., document approval, change requests) are routed within Teamcenter.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Triggers and Conditions: Define rules that trigger specific actions when certain conditions are met, such as sending notifications when a task is completed.',
      'style': bodyTextStyle
    },

    {'text': 'Access Manager:', 'style': subtitle2TextStyle},
    {
      'text':
          '• User Management: Set up user roles and access levels, controlling who can view, edit, or approve data.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Team Configuration: Define permissions for cross-functional teams, ensuring sensitive information is protected but accessible to authorized users.',
      'style': bodyTextStyle
    },

    {'text': 'B. Customization Skills:', 'style': subtitleTextStyle},

    {'text': 'ITK (Integrated Toolkit):', 'style': subtitle2TextStyle},
    {
      'text':
          '• C/C++ API: Write custom business logic, reports, or utilities that extend Teamcenter’s out-of-the-box functionality.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Server-Side Customization: Develop server-side applications that manipulate data, perform validations, or automate tasks.',
      'style': bodyTextStyle
    },

    {
      'text': 'Teamcenter SOA (Service-Oriented Architecture):',
      'style': subtitle2TextStyle
    },
    {
      'text':
          '• Java API: Write web services that allow integration between Teamcenter and other enterprise applications.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Web Service Calls: SOA allows Teamcenter to integrate with web applications, mobile apps, and cloud-based services.',
      'style': bodyTextStyle
    },

    {'text': 'Teamcenter RAC Customization:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Rich Application Client (RAC): Customization of the Teamcenter user interface for tailored user experiences and enhanced productivity.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Java Plug-ins: Write Java plug-ins to add custom functionality to the Teamcenter client.',
      'style': bodyTextStyle
    },

    {'text': 'NX Open API:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Customization for CAD Integration: Write scripts that automate tasks within the Siemens NX CAD tool, integrating closely with Teamcenter for design data management.',
      'style': bodyTextStyle
    },

    {'text': '4. System Administration', 'style': titleTextStyle},

    {'text': 'A. Server Management:', 'style': subtitleTextStyle},

    {'text': 'Teamcenter Deployment:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Installation: Install Teamcenter server and client applications, configure licensing, and ensure connection between all components.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Cluster Configuration: Set up clustered Teamcenter environments to ensure high availability and load balancing.',
      'style': bodyTextStyle
    },

    {'text': 'FMS (File Management System):', 'style': subtitle2TextStyle},
    {
      'text':
          '• Overview: Manages files in distributed systems, ensuring files are accessible to all users, regardless of their location.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Vaulting: Understand how to configure Teamcenter vaults to store data securely and efficiently.',
      'style': bodyTextStyle
    },

    {'text': 'Database Management:', 'style': subtitle2TextStyle},
    {
      'text':
          '• Supported Databases: Teamcenter typically runs on Oracle or Microsoft SQL Server. Understand basic database management, such as running queries, backups, and performance tuning.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Database Schema: Learn how Teamcenter structures its database, including tables, views, and relationships.',
      'style': bodyTextStyle
    },

    {'text': 'B. Performance Optimization:', 'style': subtitleTextStyle},

    {
      'text':
          '• Database Optimization: Techniques like indexing, query optimization, and caching to improve database performance.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Load Balancing: Distribute workloads across multiple servers to prevent performance bottlenecks.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Monitoring Tools: Use monitoring tools (e.g., Splunk) to track server performance and address issues proactively.',
      'style': bodyTextStyle
    },

    {'text': 'C. Patches and Upgrades:', 'style': subtitleTextStyle},

    {
      'text':
          '• Applying Patches: Regularly patching the system to fix bugs, improve security, and maintain performance.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Upgrading Teamcenter: Best practices for upgrading Teamcenter environments with minimal downtime, including pre-upgrade testing and backup strategies.',
      'style': bodyTextStyle
    },

    ///5-6-7 code
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    ///
// List of text items with their respective styles
    {'text': '5. Integration Knowledge', 'style': titleTextStyle},

    {'text': 'A. ERP/PLM Integration:', 'style': subtitleTextStyle},

    {
      'text':
          '• Overview: Integrating Teamcenter with ERP systems like SAP or Oracle to ensure seamless data exchange for BOM, parts management, procurement, and financial reporting.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Integration Middleware: Tools like TIBCO or Mulesoft can facilitate communication between PLM and ERP systems.',
      'style': bodyTextStyle
    },

    {'text': 'B. CAD/PLM Integration:', 'style': subtitleTextStyle},

    {
      'text':
          '• Data Synchronization: Ensures CAD data such as models, assemblies, and drawings are synchronized with Teamcenter.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• File Translation: Automate conversion of CAD files into formats required by downstream systems (e.g., 3D PDFs, STEP files).',
      'style': bodyTextStyle
    },

    {'text': 'C. Middleware Integration:', 'style': subtitleTextStyle},

    {
      'text':
          '• Middleware Tools: Understand middleware platforms (like TIBCO, Mulesoft) to enable enterprise-level system integration, ensuring data flows between Teamcenter and other critical systems.',
      'style': bodyTextStyle
    },

    {'text': '6. Data Migration and Import/Export', 'style': titleTextStyle},

    {'text': 'A. Data Migration:', 'style': subtitleTextStyle},

    {
      'text':
          '• Legacy Data Migration: Techniques to migrate legacy product data, drawings, and BOMs from old systems into Teamcenter.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Migration Tools: Use tools such as TcXML or PLMXML for data extraction, transformation, and loading (ETL) processes.',
      'style': bodyTextStyle
    },

    {'text': 'B. PLMXML:', 'style': subtitleTextStyle},

    {
      'text':
          '• PLMXML Files: Understand the use of PLMXML, an XML-based format, for exchanging product data between different systems.',
      'style': bodyTextStyle
    },

    {
      'text': '7. Business Process Mapping and Analysis',
      'style': titleTextStyle
    },

    {'text': 'A. Requirement Gathering:', 'style': subtitleTextStyle},

    {
      'text':
          '• Client Interviews: Conduct interviews with key stakeholders to gather requirements on product development, engineering processes, and data management.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Use Case Development: Translate client needs into detailed use cases for Teamcenter implementation.',
      'style': bodyTextStyle
    },

    {'text': 'B. Process Mapping:', 'style': subtitleTextStyle},

    {
      'text':
          '• Process Diagrams: Use tools like Visio to map out business processes such as ECOs, design reviews, or document approvals.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Gap Analysis: Identify gaps between current business processes and what Teamcenter offers, recommending solutions accordingly.',
      'style': bodyTextStyle
    },

    {'text': 'C. Client Consulting:', 'style': subtitleTextStyle},

    {
      'text':
          '• Best Practices: Guide clients on industry best practices for PLM implementation, ensuring efficient use of Teamcenter features.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Training: Provide end-user training and develop training materials (e.g., user guides, video tutorials) for Teamcenter users.',
      'style': bodyTextStyle
    },

    ///8-9-10
    ///
    ///
    ///
    ///
    ///
    ///
// List of text items with their respective styles
    {
      'text': '8. Project Management and Client Communication',
      'style': titleTextStyle
    },

    {'text': 'A. PLM Implementation Lifecycle:', 'style': subtitleTextStyle},

    {'text': '• Phases:', 'style': bodyTextStyle},
    {
      'text': '  - Discovery: Understand client requirements.',
      'style': bodyTextStyle
    },
    {
      'text': '  - Design: Blueprinting and modeling the solution.',
      'style': bodyTextStyle
    },
    {
      'text': '  - Development: Configuring and customizing Teamcenter.',
      'style': bodyTextStyle
    },
    {
      'text': '  - Testing: Ensuring the solution works as expected.',
      'style': bodyTextStyle
    },
    {
      'text': '  - Deployment: Roll-out Teamcenter to end-users.',
      'style': bodyTextStyle
    },
    {
      'text': '  - Support: Provide ongoing support and enhancements.',
      'style': bodyTextStyle
    },

    {'text': 'B. Agile Methodologies:', 'style': subtitleTextStyle},

    {
      'text':
          '• Scrum/Agile: Familiarize yourself with Scrum practices, which break projects down into sprints, ensuring that features are delivered iteratively and with regular client feedback.',
      'style': bodyTextStyle
    },

    {'text': 'C. Team Leadership:', 'style': subtitleTextStyle},

    {
      'text':
          '• Overseeing Teams: Lead and mentor junior developers, administrators, and support staff.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Managing Risks: Identify and mitigate risks during the implementation phase to ensure timely project delivery.',
      'style': bodyTextStyle
    },

    {'text': 'D. Client Communication:', 'style': subtitleTextStyle},

    {
      'text':
          '• Stakeholder Management: Regularly communicate project status, risks, and deliverables to stakeholders.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Presentation Skills: Deliver presentations and demos of Teamcenter functionality to client teams.',
      'style': bodyTextStyle
    },

    {'text': '9. Teamcenter Certifications', 'style': titleTextStyle},

    {'text': 'A. Siemens Certifications:', 'style': subtitleTextStyle},

    {
      'text':
          '• Teamcenter Administrator: Focuses on server management, configuration, and basic customization.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Teamcenter Developer: Focuses on customization using BMIDE, ITK, SOA, and RAC development.',
      'style': bodyTextStyle
    },

    {'text': 'B. Additional Training:', 'style': subtitleTextStyle},

    {
      'text':
          '• Courses: Take formal training provided by Siemens or third-party providers in areas like BMIDE, Workflow Design, and Integration.',
      'style': bodyTextStyle
    },

    {'text': '10. Soft Skills', 'style': titleTextStyle},

    {'text': 'A. Problem-Solving:', 'style': subtitleTextStyle},

    {
      'text':
          '• Troubleshooting: Quickly identify and resolve issues in workflows, customization, or performance.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Critical Thinking: Ability to analyze complex client needs and design the best solution.',
      'style': bodyTextStyle
    },

    {'text': 'B. Collaboration:', 'style': subtitleTextStyle},

    {
      'text':
          '• Teamwork: Work with engineers, developers, project managers, and business analysts to implement solutions effectively.',
      'style': bodyTextStyle
    },

    {'text': 'C. Adaptability:', 'style': subtitleTextStyle},

    {
      'text':
          '• Continuous Learning: Keep up-to-date with new releases of Teamcenter, new technologies, and industry trends to stay competitive in the role.',
      'style': bodyTextStyle
    },

    {'text': 'Resources for Learning and Practice', 'style': subtitleTextStyle},

    {
      'text':
          '• Siemens Official Documentation: Study guides, installation manuals, and API documentation.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• PLM Communities: Join forums like PLM World to network with other professionals.',
      'style': bodyTextStyle
    },
    {
      'text':
          '• Hands-On Experience: Set up a Teamcenter sandbox environment and practice configuration, customization, and administration tasks.',
      'style': bodyTextStyle
    },

    {
      'text': '------------------------------------------',
      'style': bodyTextStyle
    },
    {
      'text':
          'By mastering these areas in detail, you’ll be fully prepared for the Teamcenter PLM Consultant role.',
      'style': subtitle2TextStyle
    },
  ];
}
