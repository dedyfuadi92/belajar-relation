<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PinjamBuku extends Model
{
    use HasFactory;
    protected $table = 'pinjam_bukus';
    protected $fillable = [
        'buku_nama',
        'buku_kode',
        'buku_jenis',
        'siswa_id',
        'mulai',
        'akhir',
        'kembali',
    ];
    protected function siswa()
    {
        return $this->belongsTo(Siswa::class);
    }
}
