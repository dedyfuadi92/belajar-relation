<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SlotParkir extends Model
{
    use HasFactory;
    protected $table = 'slot_parkirs';
    protected $fillable = [
        'siswanto_id',
        'kode',
    ];
    protected function siswa()
    {
        return $this->belongsTo(Siswa::class, 'siswanto_id', 'id');
    }
}
