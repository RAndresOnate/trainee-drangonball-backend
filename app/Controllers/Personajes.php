<?php

namespace App\Controllers;

use CodeIgniter\API\ResponseTrait;
use App\Models\PersonajesModel;

class Personajes extends BaseController

{
    use ResponseTrait;

    private $personajes;

    public function __construct()
    {
        $this->personajes = new PersonajesModel();
    }
    public function listaPersonajes()
    {

        //lista los datos
        $lista = $this->personajes->personajesTotales();
        // revisa si hay datos
        if (!empty($lista)) {
            // transforma los datos a json
            return $this->response->setJSON($lista);
        } else {
            // retorna código error si no existen
            return $this->response->setStatusCode(204);
        }
    }

    public function filtroUniversos($id)
    {
        //lista los datos
        $lista = $this->personajes->filtroUniverso($id);
        // revisa si hay datos
        if (!empty($lista)) {
            // transforma los datos a json
            return $this->response->setJSON($lista);
        } else {
            // retorna código error si no existen
            return $this->response->setStatusCode(204);
        }
    }

    public function filtroNombre($nombre)
    {
        //lista los datos
        $lista = $this->personajes->filtroNombre($nombre);
        // revisa si hay datos
        if (!empty($lista)) {
            // transforma los datos a json
            return $this->response->setJSON($lista);
        } else {
            // retorna código error si no existen
            return $this->response->setStatusCode(204);
        }
    }
}
