<?php

namespace App\Models;

use CodeIgniter\Model;

class PoderesModel extends Model
{
    protected $table = 'TBL_PODER';
    protected $primaryKey = 'ID_PODER';
    protected $allowedFields = ['NOMBRE_PODER'];
}
