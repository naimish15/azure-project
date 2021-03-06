USE [meaazsqld2]
GO
/****** Object:  Table [dbo].[users]    Script Date: 05/11/2014 22:43:58 ******/
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
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (1, N'creator2@test.com', N'test', 2, 1, 2, CAST(0x0000A2F000000000 AS DateTime), CAST(0x0000A2F000000000 AS DateTime))
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (2, N'viewer2@test.com', N'test', 2, 2, 1, CAST(0x0000A2F000000000 AS DateTime), CAST(0x0000A2F000000000 AS DateTime))
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (3, N'developer2@test.com', N'test', 2, 3, 3, CAST(0x0000A32000000000 AS DateTime), CAST(0x0000A32000000000 AS DateTime))
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (4, N'contributor2@test.com', N'test', 2, 4, 4, CAST(0x0000A32000000000 AS DateTime), CAST(0x0000A32000000000 AS DateTime))
INSERT [dbo].[users] ([user_id], [user_name], [user_pwd], [user_domain_id], [user_role_id], [user_ranking], [created_date], [updated_date]) VALUES (5, N'manager2@test.com', N'test', 2, 5, 5, CAST(0x0000A32000000000 AS DateTime), CAST(0x0000A32000000000 AS DateTime))
/****** Object:  Table [dbo].[roles]    Script Date: 05/11/2014 22:43:58 ******/
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
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (4, N'CONTRIBUTOR')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (5, N'MANAGER')
/****** Object:  Table [dbo].[robots]    Script Date: 05/11/2014 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[robots](
	[robot_id] [int] NOT NULL,
	[robot_name] [nvarchar](50) NOT NULL,
	[robot_desc] [nvarchar](50) NOT NULL,
	[robot_code] [ntext] NULL,
	[robot_ranking] [int] NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL,
	[robot_points] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (8, N'tanker', N'roll them over', N'package developer2;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class tanker extends Robot
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
', NULL, 3, CAST(0x0000A32501356E0F AS DateTime), CAST(0x0000A32501356E0F AS DateTime), 5)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (9, N'simple', N'testing', N'package developer2;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class simple extends Robot
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
', NULL, 3, CAST(0x0000A3250135CD9F AS DateTime), CAST(0x0000A3250135CD9F AS DateTime), 4)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (10, N'striker', N'shoot them all', N'package manager2;
import robocode.*;
//import java.awt.Color;

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Test1 - a robot by (your name here)
 */
public class striker extends Robot
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
', NULL, 5, CAST(0x0000A32501369DB3 AS DateTime), CAST(0x0000A32501369DB3 AS DateTime), 1)
INSERT [dbo].[robots] ([robot_id], [robot_name], [robot_desc], [robot_code], [robot_ranking], [created_by], [created_date], [updated_date], [robot_points]) VALUES (11, N'coolrobot', N'coolrobot', N'package developer2;
import robocode.HitRobotEvent;
import robocode.Robot;
import robocode.ScannedRobotEvent;
import robocode.WinEvent;
import static robocode.util.Utils.normalRelativeAngleDegrees;

import java.awt.*;


/**
 * Tracker - a sample robot by Mathew Nelson.
 * 
 * Locks onto a robot, moves close, fires when close.
 *
 * @author Mathew A. Nelson (original)
 * @author Flemming N. Larsen (contributor)
 */
public class coolrobot extends Robot {
	int count = 0; // Keeps track of how long we''ve
	// been searching for our target
	double gunTurnAmt; // How much to turn our gun when searching
	String trackName; // Name of the robot we''re currently tracking

	/**
	 * run:  Tracker''s main run function
	 */
	public void run() {
		// Set colors
		setBodyColor(new Color(128, 128, 50));
		setGunColor(new Color(50, 50, 20));
		setRadarColor(new Color(200, 200, 70));
		setScanColor(Color.white);
		setBulletColor(Color.blue);

		// Prepare gun
		trackName = null; // Initialize to not tracking anyone
		setAdjustGunForRobotTurn(true); // Keep the gun still when we turn
		gunTurnAmt = 10; // Initialize gunTurn to 10

		// Loop forever
		while (true) {
			// turn the Gun (looks for enemy)
			turnGunRight(gunTurnAmt);
			// Keep track of how long we''ve been looking
			count++;
			// If we''ve haven''t seen our target for 2 turns, look left
			if (count > 2) {
				gunTurnAmt = -10;
			}
			// If we still haven''t seen our target for 5 turns, look right
			if (count > 5) {
				gunTurnAmt = 10;
			}
			// If we *still* haven''t seen our target after 10 turns, find another target
			if (count > 11) {
				trackName = null;
			}
		}
	}

	/**
	 * onScannedRobot:  Here''s the good stuff
	 */
	public void onScannedRobot(ScannedRobotEvent e) {

		// If we have a target, and this isn''t it, return immediately
		// so we can get more ScannedRobotEvents.
		if (trackName != null && !e.getName().equals(trackName)) {
			return;
		}

		// If we don''t have a target, well, now we do!
		if (trackName == null) {
			trackName = e.getName();
			out.println("Tracking " + trackName);
		}
		// This is our target.  Reset count (see the run method)
		count = 0;
		// If our target is too far away, turn and move toward it.
		if (e.getDistance() > 150) {
			gunTurnAmt = normalRelativeAngleDegrees(e.getBearing() + (getHeading() - getRadarHeading()));

			turnGunRight(gunTurnAmt); // Try changing these to setTurnGunRight,
			turnRight(e.getBearing()); // and see how much Tracker improves...
			// (you''ll have to make Tracker an AdvancedRobot)
			ahead(e.getDistance() - 140);
			return;
		}

		// Our target is close.
		gunTurnAmt = normalRelativeAngleDegrees(e.getBearing() + (getHeading() - getRadarHeading()));
		turnGunRight(gunTurnAmt);
		fire(3);

		// Our target is too close!  Back up.
		if (e.getDistance() < 100) {
			if (e.getBearing() > -90 && e.getBearing() <= 90) {
				back(40);
			} else {
				ahead(40);
			}
		}
		scan();
	}

	/**
	 * onHitRobot:  Set him as our new target
	 */
	public void onHitRobot(HitRobotEvent e) {
		// Only print if he''s not already our target.
		if (trackName != null && !trackName.equals(e.getName())) {
			out.println("Tracking " + e.getName() + " due to collision");
		}
		// Set the target
		trackName = e.getName();
		// Back up a bit.
		// Note:  We won''t get scan events while we''re doing this!
		// An AdvancedRobot might use setBack(); execute();
		gunTurnAmt = normalRelativeAngleDegrees(e.getBearing() + (getHeading() - getRadarHeading()));
		turnGunRight(gunTurnAmt);
		fire(3);
		back(50);
	}

	/**
	 * onWin:  Do a victory dance
	 */
	public void onWin(WinEvent e) {
		for (int i = 0; i < 50; i++) {
			turnRight(30);
			turnLeft(30);
		}
	}
}


', NULL, 3, CAST(0x0000A325013E3398 AS DateTime), CAST(0x0000A325013E3398 AS DateTime), 2)
/****** Object:  Table [dbo].[robot_updates]    Script Date: 05/11/2014 22:43:58 ******/
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
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (3, 8, 3, 2, CAST(0x0000A32501356E0F AS DateTime), CAST(0x0000A32501356E0F AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (4, 9, 3, 2, CAST(0x0000A3250135CD9F AS DateTime), CAST(0x0000A3250135CD9F AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (5, 10, 5, 2, CAST(0x0000A32501369DB3 AS DateTime), CAST(0x0000A32501369DB3 AS DateTime))
INSERT [dbo].[robot_updates] ([ru_id], [ru_robot_id], [ru_user_id], [ru_domain_id], [created_date], [updated_date]) VALUES (6, 11, 3, 2, CAST(0x0000A325013E3398 AS DateTime), CAST(0x0000A325013E3398 AS DateTime))
/****** Object:  Table [dbo].[rights]    Script Date: 05/11/2014 22:43:58 ******/
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
/****** Object:  Table [dbo].[moss_result]    Script Date: 05/11/2014 22:43:58 ******/
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
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL,
	[compare_robot_name_1] [nvarchar](50) NULL,
	[compare_robot_name_2] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [created_date], [updated_date], [compare_robot_name_1], [compare_robot_name_2]) VALUES (1, 11, 2, 8, 2, 0, NULL, NULL, N'coolrobot', N'tanker')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [created_date], [updated_date], [compare_robot_name_1], [compare_robot_name_2]) VALUES (2, 11, 2, 9, 2, 0, NULL, NULL, N'coolrobot', N'simple')
INSERT [dbo].[moss_result] ([mr_id], [compare_robot_id_1], [compare_domain_id_1], [compare_robot_id_2], [compare_domain_id_2], [percentage], [created_date], [updated_date], [compare_robot_name_1], [compare_robot_name_2]) VALUES (3, 11, 2, 10, 2, 0, NULL, NULL, N'coolrobot', N'striker')
/****** Object:  Table [dbo].[inter_domain_mapping]    Script Date: 05/11/2014 22:43:58 ******/
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
INSERT [dbo].[inter_domain_mapping] ([idm_id], [idm_domain_id], [idm_role_id], [idm_other_domain_id], [idm_other_domain_role_id], [created_date], [updated_date]) VALUES (1, 1, 2, 2, 2, CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A31E00000000 AS DateTime))
INSERT [dbo].[inter_domain_mapping] ([idm_id], [idm_domain_id], [idm_role_id], [idm_other_domain_id], [idm_other_domain_role_id], [created_date], [updated_date]) VALUES (2, 1, 3, 2, 3, CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A31E00000000 AS DateTime))
INSERT [dbo].[inter_domain_mapping] ([idm_id], [idm_domain_id], [idm_role_id], [idm_other_domain_id], [idm_other_domain_role_id], [created_date], [updated_date]) VALUES (3, 1, 4, 2, 4, CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A31E00000000 AS DateTime))
/****** Object:  Table [dbo].[access_rights]    Script Date: 05/11/2014 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[access_rights](
	[ar_id] [int] NOT NULL,
	[ar_robot_id] [int] NOT NULL,
	[ar_domain_id] [int] NOT NULL,
	[ar_role_id] [int] NULL,
	[ar_right_id] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (24, 8, 2, 2, 2, CAST(0x0000A32501358124 AS DateTime), CAST(0x0000A32501358124 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (25, 8, 2, 3, 2, CAST(0x0000A32501358124 AS DateTime), CAST(0x0000A32501358124 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (26, 8, 2, 5, 4, CAST(0x0000A32501358124 AS DateTime), CAST(0x0000A32501358124 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (27, 8, 2, 4, 3, CAST(0x0000A32501358124 AS DateTime), CAST(0x0000A32501358124 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (28, 9, 2, 2, 2, CAST(0x0000A3250135E0CB AS DateTime), CAST(0x0000A3250135E0CB AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (29, 9, 2, 3, 3, CAST(0x0000A3250135E0CB AS DateTime), CAST(0x0000A3250135E0CB AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (30, 9, 2, 5, 4, CAST(0x0000A3250135E0CB AS DateTime), CAST(0x0000A3250135E0CB AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (31, 9, 2, 4, 3, CAST(0x0000A3250135E0CB AS DateTime), CAST(0x0000A3250135E0CB AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (32, 10, 2, 2, 1, CAST(0x0000A3250136B722 AS DateTime), CAST(0x0000A3250136B722 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (33, 10, 2, 2, 1, CAST(0x0000A3250136B74C AS DateTime), CAST(0x0000A3250136B74C AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (34, 10, 2, 3, 2, CAST(0x0000A3250136B722 AS DateTime), CAST(0x0000A3250136B722 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (35, 10, 2, 3, 2, CAST(0x0000A3250136B74C AS DateTime), CAST(0x0000A3250136B74C AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (36, 10, 2, 5, 4, CAST(0x0000A3250136B722 AS DateTime), CAST(0x0000A3250136B722 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (37, 10, 2, 5, 4, CAST(0x0000A3250136B74C AS DateTime), CAST(0x0000A3250136B74C AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (38, 10, 2, 4, 3, CAST(0x0000A3250136B722 AS DateTime), CAST(0x0000A3250136B722 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (39, 10, 2, 4, 3, CAST(0x0000A3250136B74C AS DateTime), CAST(0x0000A3250136B74C AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (40, 11, 2, 2, 2, CAST(0x0000A325013E47F0 AS DateTime), CAST(0x0000A325013E47F0 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (41, 11, 2, 3, 3, CAST(0x0000A325013E47F0 AS DateTime), CAST(0x0000A325013E47F0 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (42, 11, 2, 5, 4, CAST(0x0000A325013E47F0 AS DateTime), CAST(0x0000A325013E47F0 AS DateTime))
INSERT [dbo].[access_rights] ([ar_id], [ar_robot_id], [ar_domain_id], [ar_role_id], [ar_right_id], [created_date], [updated_date]) VALUES (43, 11, 2, 4, 3, CAST(0x0000A325013E47F0 AS DateTime), CAST(0x0000A325013E47F0 AS DateTime))
