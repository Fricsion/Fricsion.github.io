---
title: Bring vertical tabs to Firefox + Other useful stuff
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
    <title>Bring vertical tabs to Firefox</title>
---

# Procedure
1. Set up 'Sideberry'
    1. Install `Sideberry` from extension store.
    1. Click 'Cog' ⚙️ icon in the top right of the sidebar.
    1. Choose 'Style Editor' from side menu.
        1. Add these lines to set properties for fonts and background colors;

            ```css
            #root.root {--tabs-indent: 15px;}
            #root.root {--tabs-activated-bg: #BC8F8F;}
            #root.root {--tabs-font: 0.77rem sans-serif;}
            #root.root {--frame-bg: #f3b1a6;}
            #root.root {--toolbar-el-overlay-active-bg: rgba(255,255,255,0.133);}
            #root.root {--toolbar-bg: #f3b1a6;}



            #root.root {--toolbar-el-overlay-selected-border: #146fd9;}
            ```

1. Next, in order to hide horizontal(normal) tabs
    1. Enter about:config in the address bar and select “Accept the Risk and Continue.”
    1. Under “Search preference name,” paste the following text: toolkit.legacyUserProfileCustomizations.stylesheets
    1. Tap the toggle button on the right so the preference says “true.”

    1. Enter about:support in the address bar.
    1. Scroll down to the section that says “Profile Folder,” and click the “Open Folder” ("Show in Finder" on macOS) button.
    1. Create a new subfolder called “chrome” within the folder you just opened.
    1. In the new “chrome” folder, create a new file named `userChrome.css`.

        ```css

        /* ----- For macOS  ----- */
        .tabbrowser-tab {
        visibility: collapse;
        }
        .titlebar-button {
        height: 27px !important;
        }
        #nav-bar {
        margin-top: -30px;
        margin-left: 80px; 
        margin-right: 40px; 
        box-shadow: none !important;
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
        }

        [uidensity="compact"]:root .titlebar-button {
        height: 32px !important;
        }
        [uidensity="compact"]:root #nav-bar {
        margin-top: -32px;
        }

        #titlebar-spacer {
        background-color: var(--chrome-secondary-background-color);
        }
        #titlebar-buttonbox-container {
        background-color: var(--chrome-secondary-background-color);
        }
        .titlebar-color {
        }

        #main-window[inFullscreen="true"] #sidebar-box,
        #main-window[inFullscreen="true"] #sidebar-box + splitter {
            visibility: collapse;
        }

        #sidebar-box #sidebar-header {
        display: none !important;
        }
        ```

    1. Restart Firefox to take effect. 