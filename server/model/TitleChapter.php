<?php
    class TitleChapter{
        public $id;
        public $title;
        public $totalQuestion;
        public $totalCritical;

        public function __construct ($temp){
            $this->id = $temp["id"];
            $this->title = $temp["title"];
            $this->totalQuestion = $temp["totalQuestion"];
            $this->totalCritical = $temp["totalCritical"];
        }

    }
?>