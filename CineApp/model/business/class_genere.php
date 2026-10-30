<?php

class genere {
    public $id;
    public $nom;

    public function __construct($id ,$nom) {
        $this->setId(null);
        $this->setNom($nom);
    }

    public function getId() {
        return $this->id;
    }

    public function setId($value) {
        $this->id = $value;
    }

    public function getNom() {
        return $this->nom;
    }

    public function setNom($value) {
        $this->nom = $value;
    }

}

?>