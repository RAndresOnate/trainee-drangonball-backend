<?php

namespace App\Models;

use CodeIgniter\Model;

class UniversosModel extends Model
{
    protected $table = 'TBL_UNIVERSOS';
    protected $primaryKey = 'ID_UNIVERSO';
    protected $allowedFields = ['NOMBRE_UNIVERSO'];
}
