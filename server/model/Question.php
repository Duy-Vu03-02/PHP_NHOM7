<?php
    class Question {
        public $id;
        public $question;
        public $img;
        public $answer;
        public $trueAnswer;
        public $hint;
        public $mustCorrect;
        public $question_chapter;

        public function __construct($temp) {
            $this->id = $temp["id"];
            $this->question = $temp["text"];
            if($temp["img"] !== "" && $temp["img"] !== null){
                $this->img = $temp["img"];
            }
            $this->hint = $temp["hint"];
            $this->answer = explode(".,",$temp["answers"]);
            $this->trueAnswer = (int)$temp["answer"] ;
            $this->mustCorrect = (boolval($temp["critical"]));
        }
}

?>