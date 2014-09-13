<?php

class Kayttaja {

    private $nimi;
    private $tunnus;
    private $salasana;
    private $sahkoposti;
    private $yllapitaja;
    
    public function __construct($nimi, $tunnus, $salasana, $sahkoposti, $yllapitaja) {
        $this->nimi = $nimi;
        $this->tunnus = $tunnus;
        $this->salasana = $salasana;
        $this->sahkoposti = $sahkoposti;
        $this->yllapitaja = $yllapitaja;
    }

    public static function getKayttajat() {
        $sql = "SELECT kayttaja_kayttajatunnus, kayttaja_salasana, kayttaja_yllapitaja, kayttaja_nimi, kayttaja_sahkoposti from Kayttaja";
        $kysely = getTietokantayhteys()->prepare($sql);
        $kysely->execute();

        $tulokset = array();
        foreach ($kysely->fetchAll(PDO::FETCH_OBJ) as $tulos) {
            $kayttaja = new Kayttaja($tulos->kayttaja_nimi, $tulos->kayttaja_kayttajatunnus, $tulos->kayttaja_salasana, $tulos->kayttaja_sahkoposti, $tulos->kayttaja_yllapitaja);
            

            //$array[] = $muuttuja; lisää muuttujan arrayn perään. 
            //Se vastaa melko suoraan ArrayList:in add-metodia.
            $tulokset[] = $kayttaja;
        }
        return $tulokset;
    }

    public function getNimi(){
        return $this->nimi;
    }
    public function setNimi($nimi){
        $this->nimi = $nimi;
    }
    
    public function getTunnus(){
        return $this->tunnus;
    }
    public function setTunnus($tunnus){
        $this->tunnus = $tunnus;
    }

    public function getSahkoposti(){
        return $this->sahkoposti;
    }
    public function setSahkoposti($sahkoposti){
        $this->sahkoposti = $sahkoposti;
    }

    public function getSalasana(){
        return $this->salasana;
    }
    public function setSalasana($salasana){
        $this->salasana = $salasana;
    }

    public function getYllapitaja(){
        return $this->yllapitaja;
    }
    public function setYllapitaja($yllapitaja){
        $this->yllapitaja = $yllapitaja;
    }
    /* Kirjoita tähän gettereitä ja settereitä */
}

