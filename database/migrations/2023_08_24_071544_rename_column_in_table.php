<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pinjam_bukus', function (Blueprint $table) {
            //
            $table->string('buku_nama')->after('buku_nnama');
        });
        DB::table('pinjam_bukus')->update(['buku_nama' => DB::raw('buku_nnama')]);

        Schema::table('pinjam_bukus', function (Blueprint $table) {
            $table->dropColumn('buku_nnama');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('pinjam_bukus', function (Blueprint $table) {
            //
        });
    }
};
