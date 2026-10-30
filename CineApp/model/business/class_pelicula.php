<?php

class pelicula {
    public $id;
    public $titol;
    public $data_estrena;
    public $durada;
    public $sinopsi;
    public $genere_id;

    public function __construct($id ,$titol) {
        $this->setId(null);
        $this->setTitol($titol);
    }

    public function getId() {
        return $this->id;
    }

    public function setId($value) {
        $this->id = $value;
    }

    public function getTitol() {
        return $this->titol;
    }

    public function setTitol($value) {
        $this->titol = $value;
    }

    public function getDataEstrena() {
        return $this->data_estrena;
    }

    public function setDataEstrena($value) {
        $this->data_estrena = $value;
    }

    public function getDurada() {
        return $this->durada;
    }

    public function setDurada($value) {
        $this->durada = $value;
    }

    public function getSinopsi() {
        return $this->sinopsi;
    }

    public function setSinopsi($value) {
        $this->sinopsi = $value;
    }

    public function getGenereId() {
        return $this->genere_id;
    }

    public function setGenereId($value) {
        $this->genere_id = $value;
    }

}

?>