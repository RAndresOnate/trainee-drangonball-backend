<?php

namespace App\Controllers;

use CodeIgniter\API\ResponseTrait;
use App\Models\UniversosModel;

class Universos extends BaseController

{
    use ResponseTrait;

    private $universos;

    public function __construct()
    {
        $this->universos = new UniversosModel();
    }

    public function listadoUniversos()
    {

        //lista los datos
        $lista = $this->universos->findAll();
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
