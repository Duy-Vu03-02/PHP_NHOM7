<?php
    class Question {
        public $id;
        public $question;
        public $img;
        public $answer;
        public $trueAnswer;
        public $hint;
        public $mustCorrect;

        public function __construct($temp) {
            $this->id = (int)$temp["id"];
            $this->question = $temp["text"];
            $this->img = $temp["img"];
            $this->answer = explode(".,", $temp["answers"]);
            $this->trueAnswer = (int)$temp["answer"];
            $this->hint = $temp["hint"];
            $this->mustCorrect = (boolval($temp["critical"]));
        }
}

?>