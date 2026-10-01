-- Create your files separately and then require them like this:
-- require("myColors")

------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

require("modules.monitors")

---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use

require("modules.variables")

-------------------
---- AUTOSTART ----
-------------------

require("modules.autostart")

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

require("modules.env")

-----------------------
----- PERMISSIONS -----
-----------------------

require("modules.permissions")

-----------------------
---- LOOK AND FEEL ----
-----------------------

require('modules.decorations')
require('modules.layout')

----------------
----  MISC  ----
----------------

require('modules.misc')

---------------
---- INPUT ----
---------------

require('modules.input')

---------------------
---- KEYBINDINGS ----
---------------------

require("modules.keybindings")

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

require('modules.windowrules')
