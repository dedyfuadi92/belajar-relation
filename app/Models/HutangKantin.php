<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HutangKantin extends Model
{
    use HasFactory;
    protected $table = 'hutang_kantins';
    protected $fillable = [
        'siswanto_id',
        'nominal',
    ];
    protected function siswa()
    {
        return $this->belongsTo(Siswa::class, 'siswanto_id', 'id');
    }
}
