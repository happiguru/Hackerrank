<?php

    class SquareRoot {
        public function sqrt_recursive($number, $min_interval, $max_interval) {
            if($number == 0 || $number == 1) {
                $answer;
                while($min_interval <= $max_interval){
                    $middle = ($min_interval + $max_interval) / 2;
    
                    if($middle * $middle == $number) {
                        return $middle;
                    } 
                    elseif($middle * $middle < $number) {
                        $min_interval = $middle + 1;
                        $answer = $middle;
                    }
                    else {
                        $max_interval = $middle -1;
                    }
                }
                return $answer;
            }
        }

        public function sqrt($number) {
    
            sqrt_recursive($number, 0, $number);
        }
    }

    $a = new SquareRoot;

    echo $a.sqrt(25);
    echo $a.sqrt(7056);

?>
