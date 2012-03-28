<?php

	class Sample1CTest extends PHPUnit_Framework_TestCase 
	{
		public function test_aTrivialTest() 
		{
			$this->assertTrue(true);
		}

		public function testComparesNumbers()
    	{
        	$this->assertTrue(1 == 1);
    	}
	}