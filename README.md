# CeeTest
CeeTest is a small eclipse plugin based on unity and CMock. The tool's main purpose is to rapidly generate testing environments for your application.

# Disclaimer
Please note that the tool is not mature yet, So please use it in a separate workspace. It's well tested against main scenarios and shouldn't do any harm to your projects but better be careful :).
## Main Features
- Automatic dependency detetction and cloning to the generated environment
- Easy dependecies mocking using CMock
- Importing unity based test files and their dependencies
- Unity report rendering and redirection to the failing lines
- Easy coverage configuration for selected files
- Coverage report generation using gcovr

## Dependencies
- Unity Test Harness
- CMock
- gcovr
- Ruby 3.0.3 (Not sure if newer versions will work with CMock)

## Dependencies Installation
- Download CMock : https://github.com/ThrowTheSwitch/CMock
- Download Unity : https://github.com/ThrowTheSwitch/Unity
- Copy unity folder contents under CMock's path: CMock/vendors/unity
- Install Ruby : https://rubyinstaller.org/2021/11/27/rubyinstaller-3.0.3-1-2.7.5-1-and-2.6.9-1-released.html
- Install gcovr : https://gcovr.com/en/stable/

## Plugin Installation
- Clone the repository to your local machine
- Open eclipse C/C++ (Tried on version 2022‑03)
- From the menu bar, select "Help -> Install New Software"
- In the "Install" dialog, click "Add"
- Click "local" and navigate to "CeeTest Update Site" path
- Check the plugin's checkbox
- Click next and continue the installation

## Eclipse View
- From the menu bar, choose Window -> Show view -> Other
- CeeTest should be there and you can now open the tool's GUI

## CeeTest UI

 ![image](https://user-images.githubusercontent.com/9629681/168420901-75a13836-f7b6-4e46-b14c-6fa8b23667e5.png)

## Functions
- Test Files: Allows you to choose source files (and possibly headers) that you need to test. The tool will parse the file, detects dependencies (Includes) and asks you which of them you want to mock. It will then generate a new project with the configured test project name and the necessary unity and cmock files.
- Load Test File: This should be helpful if you already have a test file in your main project, The tool will parse it, grab dependencies to the new project and copies the "test group runners" to your main file.
- Refresh Report: When you build the project run, the test results should appear in a new process console. When you click this button it will parse the console contents and displays the results in the below table:

 ![image](https://user-images.githubusercontent.com/9629681/168421218-299ccbc8-b72d-4097-8952-1642bb11c377.png)
 
- Clone: This button helps you move resources easily from your main project to your test project, Perserving its relative path.
- Configure Coverage: Asks you to choose source files that you need to track for coverage. It adds "-lgcov --coverage" flag to your source file.
- Coverage Report: Invokes gcovr command to generate the coverage report, and copies them to your workspace.
- Configure: This is necessary to add:
  - CMock path
  - Main Project Name (the project that contains your source files in your workspace)
  - Test Project Name (The generated project name)
  - Additional gcovr flags. for example, you can add --csv to get the coverage report in csv format. The output will be shown on the generated project build console.

## Basic Workfolw

1- Tool Configuration
- You need to start by clicking "Configure" Button and add CMock path (Which should also contain unity files in /vendors/unity relative path).
- Add your main project name, this is your main project and it should exist in the workspace with your source files.
- Add the name of the project that will be generated (The tool will try to generate everything in this project even if it already exists.So, be careful!)
- Optionally add additional gcovr flags

Example:

![image](https://user-images.githubusercontent.com/9629681/168421957-0c4de0bb-419c-4343-b6e3-a5efe75caf17.png)


2- Click "Test Files" Button to choose your source files, the tool will ask you which dependencies you want to mock:

![image](https://user-images.githubusercontent.com/9629681/168421998-b080f6de-6adb-4b79-a3f6-a99a6097fd79.png)

Please make sure to untick the module under test's header file as it doesn't make sense to mock it.

The generated Project:

![image](https://user-images.githubusercontent.com/9629681/168422116-0f480e0b-6a90-4f2b-ac31-94bcaaee9863.png)

You can find unity files, cmock files, mocked dependencies, unmocked dependencies and generated test and main files listed in the new project.

3- Convert the generated project to a C Project and add your desired configurations. This is done by right clicking the project -> New -> Convert to C/C++ project.
Example: 

![image](https://user-images.githubusercontent.com/9629681/168422210-0170f89f-59cd-4d33-a381-504b9fe4dde6.png)

4- Build the project and run it (You might get some errors so you may need to add some paths to the compiler include paths). After you build it, and the results show up in the project console, click "Refresh Report" to display the results.

Example:

![image](https://user-images.githubusercontent.com/9629681/168422330-79eef689-96dd-495f-94f5-d9db3b54f893.png)

5- You can now click on "Configure Coverage" and select your source files to let the tool add the necessary coverage flags.
6- Build and run your project again to get the coverage data.
7- Click on "Coverage Report" and the report html page should show up.

Example: 

![image](https://user-images.githubusercontent.com/9629681/168422512-78e7d056-3762-49e1-98cd-c95f524d8d50.png)




