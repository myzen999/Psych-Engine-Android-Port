function onCreate()
	-- background shit
	makeLuaSprite('stageback1', 'stageback1', -600, -300);
	setScrollFactor('stageback1', 0.9, 0.9);
	
	makeLuaSprite('stagefront1', 'stagefront1', -650, 600);
	setScrollFactor('stagefront1', 0.9, 0.9);
	scaleObject('stagefront1', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagecurtains1', 'stagecurtains1', -500, -300);
		setScrollFactor('stagecurtains1', 1.3, 1.3);
		scaleObject('stagecurtains1'1, 0.9, 0.9);
	end

	addLuaSprite('stageback1', false);
	addLuaSprite('stagefront1', false);
	addLuaSprite('stagecurtains1', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end