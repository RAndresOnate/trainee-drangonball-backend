<?php

namespace App\Models;

use CodeIgniter\Model;

class PersonajesModel extends Model
{
    protected $table = 'TBL_PERSONAJE';
    protected $primaryKey = 'ID_PERSONAJE';
    protected $allowedFields = ['NOMBRE_PERSONAJE', 'IMAGEN', 'DESCRIPCION', 'ID_RAZA', 'BIOGRAFIA', 'ID_UNIVERSO'];


    public function personajesTotales()
    {
        $query = $this->select('P.ID_PERSONAJE AS ID, P.NOMBRE_PERSONAJE AS NOMBRE, P.IMAGEN AS IMAGEN, U.NOMBRE_UNIVERSO AS UNIVERSO')
            ->from('TBL_PERSONAJE P')
            ->join('TBL_UNIVERSOS U', 'U.ID_UNIVERSO = P.ID_UNIVERSO')
            ->get()
            ->getRowArray();
        return $query;
    }

    public function filtroUniverso($idUniverso)
    {
        $query = $this->select('P.ID_PERSONAJE AS ID, P.NOMBRE_PERSONAJE AS NOMBRE, P.IMAGEN AS IMAGEN, U.NOMBRE_UNIVERSO AS UNIVERSO')
            ->from('TBL_PERSONAJE P')
            ->join('TBL_UNIVERSOS U', 'U.ID_UNIVERSO = P.ID_UNIVERSO')
            ->where('U.ID_UNIVERSO', $idUniverso)
            ->get()
            ->getResultArray();
        return $query;
    }

    public function filtroNombre($nombre)
    {
        $query = $this->select('P.ID_PERSONAJE AS ID, P.NOMBRE_PERSONAJE AS NOMBRE, P.IMAGEN AS IMAGEN, U.NOMBRE_UNIVERSO AS UNIVERSO')
            ->from('TBL_PERSONAJE P')
            ->join('TBL_UNIVERSOS U', 'U.ID_UNIVERSO = P.ID_UNIVERSO')
            ->where('P.NOMBRE_PERSONAJE', $nombre)
            ->get()
            ->getResultArray();
        return $query;
    }


    //busqueda de perso
    public function tarjetaID($idPersonaje)
    {
        $query = $this->select('P.ID_PERSONAJE AS ID, P.NOMBRE_PERSONAJE AS NOMBRE, P.IMAGEN AS IMAGEN, P.DESCRIPCION AS DESCRIPCION, R.NOMBRE_RAZA AS RAZA, P.BIOGRAFIA AS BIOGRAFIA, U.NOMBRE_UNIVERSO AS UNIVERSO')
            ->join('TBL_RAZA R', 'R.ID_RAZA = P.ID_RAZA')
            ->join('TBL_UNIVERSOS U', 'U.ID_UNIVERSO = P.ID_UNIVERSO')
            ->join('TBL_PODERES_PERSONAJE PP', 'P.ID_PERSONAJE = PP.ID_PERSONAJE')
            ->join('TBL_PODER PO', 'PO.ID_PODER = PP.ID_PODER')
            ->where('P.ID_PERSONAJE', $idPersonaje)
            ->groupBy('P.ID_PERSONAJE')
            ->get()
            ->getRowArray();
        return $query;
    }
}
