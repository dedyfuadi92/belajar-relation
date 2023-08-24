<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;
    protected $table = 'siswas';
    protected $fillable = [
        'nis',
        'nama',
        'kelas',
        'wali_murid_ayah',
        'wali_murid_ibu',
        'alamat',
    ];
    protected function pinjam_bukus()
    {
        return $this->hasMany(PinjamBuku::class);
    }
    protected function hutang_kantins()
    {
        return $this->hasMany(HutangKantin::class, 'siswanto_id', 'id');
    }
    protected function slot_parkirs()
    {
        return $this->hasMany(SlotParkir::class, 'siswanto_id', 'id');
    }
}
