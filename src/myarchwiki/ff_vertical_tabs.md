---
title: Bring vertical tabs to Firefox + Other useful stuff
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
    <title>Bring vertical tabs to Firefox</title>
---

# Procedure
1. Install `Sideberry` from extension store.
1. Click 'Cog' ⚙️ icon in the top right of the sidebar.
1. Choose 'Style Editor' from side menu.
    1. Add these lines to set properties for fonts and background colors;
        ```
        #root.root {--tabs-indent: 15px;}
        #root.root {--tabs-activated-bg: #BC8F8F;}
        #root.root {--tabs-font: 0.77rem sans-serif;}
        #root.root {--frame-bg: #f3b1a6;}
        #root.root {--toolbar-el-overlay-active-bg: rgba(255,255,255,0.133);}
        #root.root {--toolbar-bg: #f3b1a6;}



        #root.root {--toolbar-el-overlay-selected-border: #146fd9;}
        ```