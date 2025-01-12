import 'package:flutter/material.dart';

class QnaScreen extends StatelessWidget {
  const QnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QnA'),
      ),
      body: ListView.builder(
        itemCount: qaList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              title: Text(
                qaList[index]['question']!,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    qaList[index]['answer']!,
                    style: const TextStyle(fontSize: 16),
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
    'question': 'What is PLM & PDM?',
    'answer':
        'PLM (Product Lifecycle Management) is a strategy for managing a product\'s lifecycle from inception to disposal. PDM (Product Data Management) focuses on managing the data related to product development.'
  },
  {
    'question': 'What is Teamcenter?',
    'answer':
        'Teamcenter is a widely used PLM software developed by Siemens that serves as a central repository for managing product-related information and processes.'
  },
  {
    'question': 'Different Types of Searches in Teamcenter?',
    'answer':
        'Teamcenter offers several search types: Quick Search, Advanced Search, Saved Search, Contextual Search, and Relation Search.'
  },
  {
    'question': 'What are Views and Perspectives in Teamcenter?',
    'answer':
        'Views refer to different representations of data like Item View or Workflow View. Perspectives define the workspace layout, including different panels depending on the user\'s role.'
  },
  {
    'question': 'How to Save a Search Result in Teamcenter?',
    'answer':
        'After a search, select the "Save Search" option and provide a name for future reuse without re-entering criteria.'
  },
  {
    'question': 'How to Compare Search Results in Teamcenter?',
    'answer':
        'Select objects from the search results and use the "Compare" tool to highlight differences and similarities.'
  },
  {
    'question': 'How to Add a Folder to Favorites in Teamcenter?',
    'answer':
        'Right-click a folder and select "Add to Favorites" to create a shortcut for easy access.'
  },
  {
    'question': 'How to Change Group and Role in Teamcenter?',
    'answer':
        'Navigate to the "User" icon, select "Change Group/Role", and choose the desired group and role.'
  },
  {
    'question': 'How to Change a User\'s Password in Teamcenter?',
    'answer':
        'Go to the "User Management" section, locate the account, and select "Change Password". Administrative privileges may be required.'
  },
  {
    'question': 'What is a Folder in Teamcenter?',
    'answer':
        'A folder is a container for organizing objects like datasets, items, and documents.'
  },
  {
    'question': 'What are the Different Types of Folders in Teamcenter?',
    'answer':
        'There are Standard Folders, Project Folders, and Pseudo Folders that display objects dynamically.'
  },
  {
    'question': 'How to Add an Object in Teamcenter?',
    'answer':
        'Right-click in the folder, select "New", choose the object type, and define its properties.'
  },
  {
    'question': 'How to Add or Remove Applications in Teamcenter?',
    'answer':
        'Access the "Preferences" settings and configure the application display for your role. Admin rights may be required.'
  },
  {
    'question': 'How to Display a Pseudo Folder in Teamcenter?',
    'answer':
        'Navigate to the context where the pseudo folder is configured, or search for specific objects to populate it.'
  },
  {
    'question': 'How to Set a Real Name in Teamcenter?',
    'answer':
        'Update the Display Name or Full Name settings in User Preferences, or contact your administrator if the field is locked.'
  },
  {
    'question': 'What is Impact Analysis in Teamcenter?',
    'answer':
        'Impact analysis evaluates how changes to an object affect related objects in the system.'
  },
  {
    'question':
        'Difference between Summary, Details, and Viewer View in Teamcenter?',
    'answer':
        'Summary View provides a high-level overview. Details View offers a detailed breakdown. Viewer View visualizes objects like CAD files.'
  },
  {
    'question': 'How to Export Search Results in Teamcenter?',
    'answer':
        'After performing a search, select the results and use the "Export" option, choosing a format like Excel or CSV.'
  },
  {
    'question': 'How to Check Tasks to Perform in Teamcenter?',
    'answer':
        'View tasks in the Inbox or Workflow Viewer for workflows you are involved in.'
  },
  {
    'question': 'What is an Item in Teamcenter?',
    'answer':
        'An item represents a product or component, serving as a container for data like part numbers and revisions.'
  },
  {
    'question': 'What is a Dataset in Teamcenter?',
    'answer':
        'A dataset is a collection of related data such as CAD models, documents, or analysis files associated with an item or revision.'
  },
  {
    'question': 'What is a Dataset Version in Teamcenter?',
    'answer':
        'A dataset version tracks different iterations or updates of a dataset over time.'
  },
  {
    'question': 'What is a Sequence ID in Teamcenter?',
    'answer':
        'Sequence ID is a unique identifier used to order or identify objects like items or revisions in a sequence.'
  },
  {
    'question': 'What is Purge in Teamcenter?',
    'answer':
        'Purge refers to the deletion of older data like outdated revisions to free storage and improve performance.'
  },
  {
    'question': 'How to Increase Purge Limit in Teamcenter?',
    'answer':
        'Users generally cannot modify purge limits directly; this is controlled by admin settings in the system configuration'
  },
  {
    'question': 'What are Item Master and Item Revision Master in Teamcenter?',
    'answer':
        'Item Master is the main record of an item, while Item Revision Master tracks specific versions associated with changes.'
  },
  {
    'question': 'What is Check-out and Check-in in Teamcenter?',
    'answer':
        'Check-out locks an object for editing, while Check-in updates the system with the new version and unlocks it.'
  },
  {
    'question': 'What are the Types of Check-out in Teamcenter?',
    'answer':
        'Soft Check-out allows limited actions for others. Hard Check-out fully locks the object from others.'
  },
  {
    'question': 'How to See Check-out History in Teamcenter?',
    'answer':
        'View check-out history through the Revision History tab or Audit History for an object.'
  },
  {
    'question': 'What is a Project in Teamcenter?',
    'answer':
        'A project is a collection of items, datasets, and workflows related to a specific initiative or objective.'
  },
  {
    'question': 'What is Rule-based and Object-based Protection in Teamcenter?',
    'answer':
        'Rule-based protection is typically set up using Access Manager, which applies rules to objects based on user roles, while object-based protection is configured per object but often via rule definitions'
  },
  {
    'question': 'How to Create an OOTB Report in Teamcenter?',
    'answer':
        'Use Teamcenter\'s built-in reporting tools, select the desired template, input parameters, and run the report.'
  },
  {
    'question': 'What is an Organization in Teamcenter?',
    'answer':
        'An organization is a hierarchical structure representing a company or business unit, defining access to data and functions.'
  },
  {
    'question': 'What are Organization Administrative Tasks in Teamcenter?',
    'answer':
        'These tasks include managing users, roles, groups, permissions, and configuring settings that affect workflow and data management.'
  },
  {
    'question': 'What is a Person in Teamcenter?',
    'answer':
        'A person represents an individual user or entity within the organization, assigned roles and specific access permissions.'
  },
  {
    'question': 'What is a User in Teamcenter?',
    'answer':
        'A user is an account associated with a person, allowing them to log in to Teamcenter with defined roles and access rights.'
  }
];
