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
        // consulta datos personajes
        $query_personajes = $this->db->table('TBL_PERSONAJE P')
            ->select('P.ID_PERSONAJE AS ID, P.NOMBRE_PERSONAJE AS NOMBRE, P.IMAGEN AS IMAGEN, P.DESCRIPCION AS DESCRIPCION, R.NOMBRE_RAZA AS RAZA, P.BIOGRAFIA AS BIOGRAFIA, U.NOMBRE_UNIVERSO AS UNIVERSO')
            ->join('TBL_RAZA R', 'R.ID_RAZA = P.ID_RAZA')
            ->join('TBL_UNIVERSOS U', 'U.ID_UNIVERSO = P.ID_UNIVERSO')
            ->groupBy('P.ID_PERSONAJE')
            ->orderBy('P.NOMBRE_PERSONAJE', 'ASC')
            ->get()
            ->getResultArray();

        // consulta poderes personajes
        $query_poderes = $this->db->table('TBL_PODERES_PERSONAJE PP')
            ->select('PP.ID_PERSONAJE AS ID, GROUP_CONCAT(PO.NOMBRE_PODER SEPARATOR \',\') AS PODERES')
            ->join('TBL_PODER PO', 'PO.ID_PODER = PP.ID_PODER')
            ->groupBy('PP.ID_PERSONAJE')
            ->get()
            ->getResultArray();

        // se combinan los resultados
        $datos = [];
        foreach ($query_personajes as $personaje) {
            $pj_id = $personaje['ID'];
            $datos[$pj_id] = $personaje;
            $datos[$pj_id]['PODERES'] = [];
        }

        // asignar los poderes al pj
        foreach ($query_poderes as $poderes) {
            $personaje_id = $poderes['ID'];
            $datos[$personaje_id]['PODERES'] = explode(',', $poderes['PODERES']);
        }

        return array_values($datos);
    }


    public function filtroUniverso($idUniverso)
    {
        // consulta datos personajes
        $query_personajes = $this->db->table('TBL_PERSONAJE P')
            ->select('P.ID_PERSONAJE AS ID, P.NOMBRE_PERSONAJE AS NOMBRE, P.IMAGEN AS IMAGEN, P.DESCRIPCION AS DESCRIPCION, R.NOMBRE_RAZA AS RAZA, P.BIOGRAFIA AS BIOGRAFIA, U.NOMBRE_UNIVERSO AS UNIVERSO')
            ->join('TBL_RAZA R', 'R.ID_RAZA = P.ID_RAZA')
            ->join('TBL_UNIVERSOS U', 'U.ID_UNIVERSO = P.ID_UNIVERSO')
            ->where('U.ID_UNIVERSO', $idUniverso)
            ->groupBy('P.ID_PERSONAJE')
            ->orderBy('P.NOMBRE_PERSONAJE', 'ASC')
            ->get()
            ->getResult();

        // consulta poderes personajes
        $query_poderes = $this->db->table('TBL_PODERES_PERSONAJE PP')
            ->select('PP.ID_PERSONAJE AS ID, GROUP_CONCAT(PO.NOMBRE_PODER SEPARATOR \',\') AS PODERES')
            ->join('TBL_PODER PO', 'PO.ID_PODER = PP.ID_PODER')
            ->groupBy('PP.ID_PERSONAJE')
            ->get()
            ->getResult();

        // asociamos los poderes a un personaje por su ID
        $poderes_por_personaje = [];
        foreach ($query_poderes as $poderes) {
            $poderes_por_personaje[$poderes->ID] = explode(',', $poderes->PODERES);
        }

        // combinamos los resultados de ambas consultas
        $datos = [];
        foreach ($query_personajes as $personaje) {
            $pj_id = $personaje->ID;
            $datos[$pj_id] = (array) $personaje;
            $datos[$pj_id]['PODERES'] = isset($poderes_por_personaje[$pj_id]) ? $poderes_por_personaje[$pj_id] : [];
        }

        return array_values($datos);
    }



    public function filtroNombre($nombre)
    {
        // consulta datos personajes filtrado x nombre
        $query_personajes = $this->db->table('TBL_PERSONAJE P')
            ->select('P.ID_PERSONAJE AS ID, P.NOMBRE_PERSONAJE AS NOMBRE, P.IMAGEN AS IMAGEN, P.DESCRIPCION AS DESCRIPCION, R.NOMBRE_RAZA AS RAZA, P.BIOGRAFIA AS BIOGRAFIA, U.NOMBRE_UNIVERSO AS UNIVERSO')
            ->join('TBL_RAZA R', 'R.ID_RAZA = P.ID_RAZA')
            ->join('TBL_UNIVERSOS U', 'U.ID_UNIVERSO = P.ID_UNIVERSO')
            ->where('P.NOMBRE_PERSONAJE', $nombre)
            ->groupBy('P.ID_PERSONAJE')
            ->orderBy('P.NOMBRE_PERSONAJE', 'ASC')
            ->get()
            ->getRow();

        // consulta poderes personajes
        $query_poderes = $this->db->table('TBL_PODERES_PERSONAJE PP')
            ->select('PP.ID_PERSONAJE AS ID, GROUP_CONCAT(PO.NOMBRE_PODER SEPARATOR \',\') AS PODERES')
            ->join('TBL_PODER PO', 'PO.ID_PODER = PP.ID_PODER')
            ->groupBy('PP.ID_PERSONAJE')
            ->get()
            ->getResult();

        // filtramos los poderes para el personaje buscado
        $poderes_personaje = [];
        foreach ($query_poderes as $poderes) {
            if ($poderes->ID == $query_personajes->ID) {
                $poderes_personaje = explode(',', $poderes->PODERES);
                break;
            }
        }

        // asociamos los poderes al personaje
        $query_personajes->PODERES = $poderes_personaje;

        return $query_personajes;
    }


    public function tarjetaID($idPersonaje)
    {
        // consulta datos personajes filtrado x id
        $query_personaje = $this->db->table('TBL_PERSONAJE P')
            ->select('P.ID_PERSONAJE AS ID, P.NOMBRE_PERSONAJE AS NOMBRE, P.IMAGEN AS IMAGEN, P.DESCRIPCION AS DESCRIPCION, R.NOMBRE_RAZA AS RAZA, P.BIOGRAFIA AS BIOGRAFIA, U.NOMBRE_UNIVERSO AS UNIVERSO')
            ->join('TBL_RAZA R', 'R.ID_RAZA = P.ID_RAZA')
            ->join('TBL_UNIVERSOS U', 'U.ID_UNIVERSO = P.ID_UNIVERSO')
            ->where('P.ID_PERSONAJE', $idPersonaje)
            ->groupBy('P.ID_PERSONAJE')
            ->orderBy('P.NOMBRE_PERSONAJE', 'ASC')
            ->get()
            ->getRow();

        // consulta poderes personajes
        $query_poderes = $this->db->table('TBL_PODERES_PERSONAJE PP')
            ->select('PP.ID_PERSONAJE AS ID, GROUP_CONCAT(PO.NOMBRE_PODER SEPARATOR \',\') AS PODERES')
            ->join('TBL_PODER PO', 'PO.ID_PODER = PP.ID_PODER')
            ->where('PP.ID_PERSONAJE', $idPersonaje)
            ->groupBy('PP.ID_PERSONAJE')
            ->get()
            ->getRow();


        // asociamos los poderes al personaje
        $poderes = explode(',', $query_poderes->PODERES);
        $query_personaje->PODERES = $poderes;

        return $query_personaje;
    }
}
