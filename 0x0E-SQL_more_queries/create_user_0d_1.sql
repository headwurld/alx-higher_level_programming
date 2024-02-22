-- Check if the user exists
SET @user_exists = (SELECT COUNT(*) FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost');

-- If the user does not exist, then create a user
IF user_exists = 0 THEN
	CREATE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';
	GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';
	FLUSH PRIVILEGES;
	SELECT 'User user_0d_1 created and privileges granted.';
ELSE 
	SELECT 'User user_0d_1 already exists.' AS Message;
END IF;
