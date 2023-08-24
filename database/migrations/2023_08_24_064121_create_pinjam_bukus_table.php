<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pinjam_bukus', function (Blueprint $table) {
            $table->id();
            $table->string('buku_nnama');
            $table->string('buku_kode');
            $table->string('buku_jenis');
            $table->foreignId('siswa_id');
            $table->string('mulai');
            $table->string('akhir');
            $table->string('kembali');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pinjam_bukus');
    }
};
