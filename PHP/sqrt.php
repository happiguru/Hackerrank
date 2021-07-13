<?php
// A PHP program to find floor(sqrt(x)

// Returns floor of
// square root of x		
function floorSqrt($x)
{
	// Base cases
	if ($x == 0 || $x == 1)
	return $x;

	// Do Binary Search
	// for floor(sqrt(x))
	$start = 1; $end = $x; $ans;
	while ($start <= $end)
	{
		$mid = ($start + $end) / 2;

		// If x is a perfect square
		if ($mid * $mid == $x)
			return $mid;

		// Since we need floor, we update
		// answer when mid*mid is smaller
		// than x, and move closer to sqrt(x)
		if ($mid * $mid < $x)
		{
			$start = $mid + 1;
			$ans = $mid;
		}
		
		// If mid*mid is
		// greater than x
		else
			$end = $mid-1;	
	}
	return $ans;
}

// Driver Code
$x = 11;
echo floorSqrt($x), "\n";

// This code is contributed by ajit
?>
