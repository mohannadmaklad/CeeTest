# CeeTest
CeeTest is a small eclipse plugin based on unity and CMock. The tool's main purpose is to rapidly generate testing environments for your application.

# Disclaimer
Please note that the tool is not mature yet, So please use it in a separate workspace. It's well tested for main scenarios and shouldn't do any harm to your projects but better be careful :).
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

## Basic Workflow
- 
