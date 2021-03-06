USE [meaazsqld1]
GO
/****** Object:  Table [dbo].[users]    Script Date: 05/11/2014 22:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_pwd] [nvarchar](50) NOT NULL,
	[user_domain_id] [int] NULL,
	[user_role_id] [int] NULL,
	[user_ranking] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (1, N'creator1@test.com', N'test', 1, 1, 2, CAST(0x0000A2F000000000 AS DateTime), CAST(0x0000A32000000000 AS DateTime))
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (2, N'viewer1@test.com', N'test', 1, 2, 1, CAST(0x0000A2F000000000 AS DateTime), CAST(0x0000A32000000000 AS DateTime))
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (3, N'developer1@test.com', N'test', 1, 3, 3, CAST(0x0000A32000000000 AS DateTime), CAST(0x0000A32000000000 AS DateTime))
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (4, N'manager1@test.com', N'test', 1, 4, 4, CAST(0x0000A32000000000 AS DateTime), CAST(0x0000A32000000000 AS DateTime))
/****** Object:  Table [dbo].[roles]    Script Date: 05/11/2014 22:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [int] NOT NULL,
	[role_name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (1, N'CREATOR')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (2, N'VIEWER')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (3, N'DEVELOPER')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (4, N'MANAGER')
/****** Object:  Table [dbo].[robots]    Script Date: 05/11/2014 22:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[robots](
	[robot_id] [int] NOT NULL,
	[robot_name] [nvarchar](50) NOT NULL,
	[robot_desc] [nvarchar](50) NULL,
	[robot_code] [ntext] NULL,
	[robot_ranking] [int] NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL,
	[robot_points] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2038, N'devrobo1', N'basic robo dev', N'package developer1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class devrobo1 extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(20);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 3, CAST(0x0000A32301150D7D AS DateTime), CAST(0x0000A3250148C8A4 AS DateTime), 27)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2048, N'TestMoss', N'TestMoss', N'package manager1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class TestMoss extends Robot
{
    
/**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }
    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 4, CAST(0x0000A324002B0F6E AS DateTime), CAST(0x0000A324002D34CA AS DateTime), 0)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2050, N'Test_Manager', N'testing for moss', N'package manager1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class Test_Manager extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 4, CAST(0x0000A324015392E2 AS DateTime), CAST(0x0000A324015392E2 AS DateTime), 0)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2051, N'rambo', N'rambo', N'package developer1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class rambo extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 3, CAST(0x0000A3240144AFFC AS DateTime), CAST(0x0000A32501411F8E AS DateTime), 30)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2052, N'don', N'don', N'package developer1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class don extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 3, CAST(0x0000A3250083E950 AS DateTime), CAST(0x0000A3250083E950 AS DateTime), 7)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2053, N'devrobo2', N'my second robo', N'package developer1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class devrobo2 extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 3, CAST(0x0000A32501033745 AS DateTime), CAST(0x0000A32501313157 AS DateTime), 3)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2054, N'terminator', N'terminator', N'package developer1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class terminator extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 3, CAST(0x0000A32500DAEB06 AS DateTime), CAST(0x0000A32500DAEB06 AS DateTime), 6)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2055, N'OnCLoud', N'onCloud', N'package manager1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class OnCLoud extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 4, CAST(0x0000A32501386F13 AS DateTime), CAST(0x0000A325013CA511 AS DateTime), 0)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2056, N'testing_santhosh', N'test for demo', N'package developer1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class testing_santhosh extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 3, CAST(0x0000A3250147BA57 AS DateTime), CAST(0x0000A3250147BA57 AS DateTime), 0)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2057, N'santhosh', N'abcd', N'package manager1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class santhosh extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 4, CAST(0x0000A3260167C6C7 AS DateTime), CAST(0x0000A3260167C6C7 AS DateTime), 0)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (2058, N'test', N'test', N'package developer1;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class test extends Robot
{
    /**
     * run: Test1''s default behavior
     */
    public void run() {
        // Initialization of the robot should be put here

        // After trying out your robot, try uncommenting the import at the top,
        // and the next line:

        // setColors(Color.red,Color.blue,Color.green); // body,gun,radar

        // Robot main loop
        while(true) {
            // Replace the next 4 lines with any behavior you would like
            ahead(100);
            turnGunRight(360);
            back(100);
            turnGunRight(360);
        }
    }

    /**
     * onScannedRobot: What to do when you see another robot
     */
    public void onScannedRobot(ScannedRobotEvent e) {
        // Replace the next line with any behavior you would like
        fire(1);
    }

    /**
     * onHitByBullet: What to do when you''re hit by a bullet
     */
    public void onHitByBullet(HitByBulletEvent e) {
        // Replace the next line with any behavior you would like
        back(10);
    }
    
    /**
     * onHitWall: What to do when you hit a wall
     */
    public void onHitWall(HitWallEvent e) {
        // Replace the next line with any behavior you would like
        back(20);
    }	
}
', NULL, 3, CAST(0x0000A32701311CCA AS DateTime), CAST(0x0000A32701311CCA AS DateTime), 0)
/****** Object:  Table [dbo].[robot_updates]    Script Date: 05/11/2014 22:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[robot_updates](
	[ru_id] [int] NOT NULL,
	[ru_robot_id] [int] NOT NULL,
	[ru_user_id] [int] NULL,
	[ru_domain_id] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (10, 2038, 3, 1, CAST(0x0000A32301150D7D AS DateTime), CAST(0x0000A32301150D7D AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (25, 2048, 4, 1, CAST(0x0000A324002B0F6E AS DateTime), CAST(0x0000A324002B0F6E AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (26, 2048, 4, 1, CAST(0x0000A324002B0F6E AS DateTime), CAST(0x0000A324002B8D45 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (27, 2048, 4, 1, CAST(0x0000A324002B0F6E AS DateTime), CAST(0x0000A324002CAAF6 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (28, 2048, 4, 1, CAST(0x0000A324002B0F6E AS DateTime), CAST(0x0000A324002D34CA AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (31, 2050, 4, 1, CAST(0x0000A324015392E2 AS DateTime), CAST(0x0000A324015392E2 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (32, 2051, 3, 1, CAST(0x0000A3240144AFFC AS DateTime), CAST(0x0000A3240144AFFC AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (33, 2052, 3, 1, CAST(0x0000A3250083E950 AS DateTime), CAST(0x0000A3250083E950 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (34, 2053, 3, 1, CAST(0x0000A32501033745 AS DateTime), CAST(0x0000A32501033745 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (35, 2054, 3, 1, CAST(0x0000A32500DAEB06 AS DateTime), CAST(0x0000A32500DAEB06 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (36, 2053, 3, 2, CAST(0x0000A32501033745 AS DateTime), CAST(0x0000A32501313157 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (37, 2055, 4, 1, CAST(0x0000A32501386F13 AS DateTime), CAST(0x0000A32501386F13 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (38, 2055, 4, 1, CAST(0x0000A32501386F13 AS DateTime), CAST(0x0000A325013CA511 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (39, 2051, 3, 2, CAST(0x0000A3240144AFFC AS DateTime), CAST(0x0000A325013E6431 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (40, 2051, 3, 1, CAST(0x0000A3240144AFFC AS DateTime), CAST(0x0000A32501411F8E AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (41, 2056, 3, 1, CAST(0x0000A3250147BA57 AS DateTime), CAST(0x0000A3250147BA57 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (42, 2038, 3, 1, CAST(0x0000A32301150D7D AS DateTime), CAST(0x0000A3250148C8A4 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (43, 2057, 4, 1, CAST(0x0000A3260167C6C7 AS DateTime), CAST(0x0000A3260167C6C7 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (44, 2058, 3, 1, CAST(0x0000A32701311CCA AS DateTime), CAST(0x0000A32701311CCA AS DateTime))
/****** Object:  Table [dbo].[rights]    Script Date: 05/11/2014 22:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rights](
	[right_id] [int] NOT NULL,
	[right_name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[rights] ([right_id], [right_name]) VALUES (1, N'No Rights')
INSERT [dbo].[rights] ([right_id], [right_name]) VALUES (2, N'Read')
INSERT [dbo].[rights] ([right_id], [right_name]) VALUES (3, N'Read + Update')
INSERT [dbo].[rights] ([right_id], [right_name]) VALUES (4, N'Read + Update + Delete')
/****** Object:  Table [dbo].[moss_result]    Script Date: 05/11/2014 22:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[moss_result](
	[mr_id] [int] NOT NULL,
	[compare_robot_id_1] [int] NOT NULL,
	[compare_domain_id_1] [int] NULL,
	[compare_robot_id_2] [int] NULL,
	[compare_domain_id_2] [int] NULL,
	[percentage] [float] NULL,
	[compare_robot_name_1] [nvarchar](50) NULL,
	[compare_robot_name_2] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (38, 2048, 1, 2038, 1, 64, N'TestMoss', N'devrobo1')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (44, 2055, 1, 2038, 1, 64, N'OnCLoud', N'devrobo1')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (45, 2055, 1, 2048, 1, 64, N'OnCLoud', N'TestMoss')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (46, 2055, 1, 2050, 1, 64, N'OnCLoud', N'Test_Manager')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (47, 2055, 1, 2051, 1, 64, N'OnCLoud', N'rambo')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (48, 2055, 1, 2052, 1, 64, N'OnCLoud', N'don')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (49, 2055, 1, 2053, 1, 64, N'OnCLoud', N'devrobo2')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (50, 2055, 1, 2054, 1, 64, N'OnCLoud', N'terminator')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (58, 2051, 1, 2038, 1, 64, N'rambo', N'devrobo1')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (59, 2051, 1, 2048, 1, 64, N'rambo', N'TestMoss')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (60, 2051, 1, 2050, 1, 64, N'rambo', N'Test_Manager')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (61, 2051, 1, 2052, 1, 64, N'rambo', N'don')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (62, 2051, 1, 2053, 1, 64, N'rambo', N'devrobo2')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (63, 2051, 1, 2054, 1, 64, N'rambo', N'terminator')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (64, 2051, 1, 2055, 1, 64, N'rambo', N'OnCLoud')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (65, 2056, 1, 2038, 1, 64, N'testing_santhosh', N'devrobo1')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (66, 2056, 1, 2048, 1, 64, N'testing_santhosh', N'TestMoss')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (67, 2056, 1, 2050, 1, 64, N'testing_santhosh', N'Test_Manager')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (68, 2056, 1, 2051, 1, 64, N'testing_santhosh', N'rambo')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (69, 2056, 1, 2052, 1, 64, N'testing_santhosh', N'don')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (70, 2056, 1, 2053, 1, 64, N'testing_santhosh', N'devrobo2')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (71, 2056, 1, 2054, 1, 64, N'testing_santhosh', N'terminator')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (72, 2056, 1, 2055, 1, 64, N'testing_santhosh', N'OnCLoud')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (73, 2038, 1, 2048, 1, 64, N'devrobo1', N'TestMoss')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (74, 2038, 1, 2050, 1, 64, N'devrobo1', N'Test_Manager')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (75, 2038, 1, 2051, 1, 64, N'devrobo1', N'rambo')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (76, 2038, 1, 2052, 1, 64, N'devrobo1', N'don')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (77, 2038, 1, 2053, 1, 64, N'devrobo1', N'devrobo2')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (78, 2038, 1, 2054, 1, 64, N'devrobo1', N'terminator')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (79, 2038, 1, 2055, 1, 64, N'devrobo1', N'OnCLoud')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (80, 2038, 1, 2056, 1, 64, N'devrobo1', N'testing_santhosh')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (81, 2057, 1, 2038, 1, 64, N'santhosh', N'devrobo1')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (82, 2057, 1, 2048, 1, 64, N'santhosh', N'TestMoss')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (83, 2057, 1, 2050, 1, 64, N'santhosh', N'Test_Manager')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (84, 2057, 1, 2051, 1, 64, N'santhosh', N'rambo')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (85, 2057, 1, 2052, 1, 64, N'santhosh', N'don')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (86, 2057, 1, 2053, 1, 64, N'santhosh', N'devrobo2')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (87, 2057, 1, 2054, 1, 64, N'santhosh', N'terminator')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (88, 2057, 1, 2055, 1, 64, N'santhosh', N'OnCLoud')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (89, 2057, 1, 2056, 1, 64, N'santhosh', N'testing_santhosh')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (90, 2058, 1, 2038, 1, 64, N'test', N'devrobo1')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (91, 2058, 1, 2048, 1, 64, N'test', N'TestMoss')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (92, 2058, 1, 2050, 1, 64, N'test', N'Test_Manager')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (93, 2058, 1, 2051, 1, 64, N'test', N'rambo')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (94, 2058, 1, 2052, 1, 64, N'test', N'don')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (95, 2058, 1, 2053, 1, 64, N'test', N'devrobo2')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (96, 2058, 1, 2054, 1, 64, N'test', N'terminator')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (97, 2058, 1, 2055, 1, 64, N'test', N'OnCLoud')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (98, 2058, 1, 2056, 1, 64, N'test', N'testing_santhosh')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [compare_robot_name_1], [compare_robot_name_2]) VALUES (99, 2058, 1, 2057, 1, 64, N'test', N'santhosh')
/****** Object:  Table [dbo].[inter_domain_mapping]    Script Date: 05/11/2014 22:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inter_domain_mapping](
	[idm_id] [int] NOT NULL,
	[idm_domain_id] [int] NOT NULL,
	[idm_role_id] [int] NOT NULL,
	[idm_other_domain_id] [int] NOT NULL,
	[idm_other_domain_role_id] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[inter_domain_mapping] ([idm_id], [idm_domain_id], [idm_role_id], [idm_other_domain_id], [idm_other_domain_role_id], [created_date], [updated_date]) VALUES (1, 2, 2, 1, 2, CAST(0x0000A31E00000000 AS DateTime), CAST(0x0000A31E00000000 AS DateTime))
INSERT [dbo].[inter_domain_mapping] ([idm_id], [idm_domain_id], [idm_role_id], [idm_other_domain_id], [idm_other_domain_role_id], [created_date], [updated_date]) VALUES (2, 2, 3, 1, 3, CAST(0x0000A31E00000000 AS DateTime), CAST(0x0000A31E00000000 AS DateTime))
INSERT [dbo].[inter_domain_mapping] ([idm_id], [idm_domain_id], [idm_role_id], [idm_other_domain_id], [idm_other_domain_role_id], [created_date], [updated_date]) VALUES (3, 2, 4, 1, 3, CAST(0x0000A31E00000000 AS DateTime), CAST(0x0000A31E00000000 AS DateTime))
INSERT [dbo].[inter_domain_mapping] ([idm_id], [idm_domain_id], [idm_role_id], [idm_other_domain_id], [idm_other_domain_role_id], [created_date], [updated_date]) VALUES (4, 2, 5, 1, 4, CAST(0x0000A31E00000000 AS DateTime), CAST(0x0000A31E00000000 AS DateTime))
/****** Object:  Table [dbo].[access_rights]    Script Date: 05/11/2014 22:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[access_rights](
	[ar_id] [int] NOT NULL,
	[ar_robot_id] [int] NOT NULL,
	[ar_domain_id] [int] NOT NULL,
	[ar_role_id] [int] NOT NULL,
	[ar_right_id] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1046, 2038, 1, 2, 1, CAST(0x0000A323011529DF AS DateTime), CAST(0x0000A323011529DF AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1047, 2038, 1, 3, 2, CAST(0x0000A323011529DF AS DateTime), CAST(0x0000A323011529DF AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1048, 2038, 1, 4, 3, CAST(0x0000A323011529DF AS DateTime), CAST(0x0000A323011529DF AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1073, 2048, 1, 2, 2, CAST(0x0000A324002B3AF7 AS DateTime), CAST(0x0000A324002B3AF7 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1074, 2048, 1, 3, 3, CAST(0x0000A324002B3AF7 AS DateTime), CAST(0x0000A324002B3AF7 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1075, 2048, 1, 4, 4, CAST(0x0000A324002B3AF7 AS DateTime), CAST(0x0000A324002B3AF7 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1079, 2050, 1, 2, 1, CAST(0x0000A32401539FAA AS DateTime), CAST(0x0000A32401539FAA AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1080, 2050, 1, 3, 2, CAST(0x0000A32401539FAA AS DateTime), CAST(0x0000A32401539FAA AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1081, 2050, 1, 4, 3, CAST(0x0000A32401539FAA AS DateTime), CAST(0x0000A32401539FAA AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1082, 2051, 1, 2, 2, CAST(0x0000A3240144B795 AS DateTime), CAST(0x0000A3240144B795 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1083, 2051, 1, 3, 3, CAST(0x0000A3240144B795 AS DateTime), CAST(0x0000A3240144B795 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1084, 2051, 1, 4, 4, CAST(0x0000A3240144B795 AS DateTime), CAST(0x0000A3240144B795 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1085, 2052, 1, 2, 2, CAST(0x0000A3250083F224 AS DateTime), CAST(0x0000A3250083F224 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1086, 2052, 1, 3, 3, CAST(0x0000A3250083F224 AS DateTime), CAST(0x0000A3250083F224 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1087, 2052, 1, 4, 4, CAST(0x0000A3250083F224 AS DateTime), CAST(0x0000A3250083F224 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1088, 2053, 1, 2, 2, CAST(0x0000A32501034DDD AS DateTime), CAST(0x0000A32501034DDD AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1089, 2053, 1, 3, 3, CAST(0x0000A32501034DDD AS DateTime), CAST(0x0000A32501034DDD AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1090, 2053, 1, 4, 3, CAST(0x0000A32501034DDD AS DateTime), CAST(0x0000A32501034DDD AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1091, 2054, 1, 2, 2, CAST(0x0000A32500DB05F2 AS DateTime), CAST(0x0000A32500DB05F2 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1092, 2054, 1, 3, 3, CAST(0x0000A32500DB05F2 AS DateTime), CAST(0x0000A32500DB05F2 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1093, 2054, 1, 4, 4, CAST(0x0000A32500DB05F2 AS DateTime), CAST(0x0000A32500DB05F2 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1094, 2055, 1, 2, 2, CAST(0x0000A32501387CA0 AS DateTime), CAST(0x0000A32501387CA0 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1095, 2055, 1, 3, 3, CAST(0x0000A32501387CA0 AS DateTime), CAST(0x0000A32501387CA0 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1096, 2055, 1, 4, 4, CAST(0x0000A32501387CA0 AS DateTime), CAST(0x0000A32501387CA0 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1097, 2056, 1, 2, 2, CAST(0x0000A3250147D1F6 AS DateTime), CAST(0x0000A3250147D1F6 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1098, 2056, 1, 3, 3, CAST(0x0000A3250147D1F6 AS DateTime), CAST(0x0000A3250147D1F6 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1099, 2056, 1, 4, 3, CAST(0x0000A3250147D1F6 AS DateTime), CAST(0x0000A3250147D1F6 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1100, 2057, 1, 2, 2, CAST(0x0000A3260167EEDC AS DateTime), CAST(0x0000A3260167EEDC AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1101, 2057, 1, 3, 3, CAST(0x0000A3260167EEDC AS DateTime), CAST(0x0000A3260167EEDC AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1102, 2057, 1, 4, 4, CAST(0x0000A3260167EEDC AS DateTime), CAST(0x0000A3260167EEDC AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1103, 2058, 1, 2, 2, CAST(0x0000A32701313AAC AS DateTime), CAST(0x0000A32701313AAC AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1104, 2058, 1, 3, 3, CAST(0x0000A32701313AAC AS DateTime), CAST(0x0000A32701313AAC AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (1105, 2058, 1, 4, 4, CAST(0x0000A32701313AAC AS DateTime), CAST(0x0000A32701313AAC AS DateTime))
