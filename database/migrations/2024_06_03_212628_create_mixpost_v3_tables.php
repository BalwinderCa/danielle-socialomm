<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('mixpost_e_receipts', function (Blueprint $table) {
            if(Schema::hasIndex('mixpost_e_receipts', ['workspace_id', 'order_id'], 'unique')) {
                Schema::table('mixpost_e_receipts', function (Blueprint $table) {
                    $table->dropUnique(['workspace_id', 'order_id']);
                });
            }

            if(Schema::hasColumn('mixpost_e_receipts', 'checkout_id')) {
                $table->renameColumn('checkout_id', 'transaction_id');
            }
            
            if(Schema::hasColumn('mixpost_e_receipts', 'order_id')) {
                $table->renameColumn('order_id', 'invoice_number');
            }

            if(!Schema::hasIndex('mixpost_e_receipts', ['invoice_number'], 'unique')) {
                $table->unique('invoice_number');
            }
            
            if(!Schema::hasIndex('mixpost_e_receipts', ['workspace_id', 'invoice_number'])) {
                $table->index(['workspace_id', 'invoice_number']);
            }
        });

        if (!Schema::hasTable('mixpost_e_customers')) {
            Schema::create('mixpost_e_customers', function (Blueprint $table) {
                $table->id();
                $table->bigInteger('user_id')->unsigned()->index();
                $table->string('platform_customer_id')->unique();
                $table->timestamps();
            });
        }
    }
};