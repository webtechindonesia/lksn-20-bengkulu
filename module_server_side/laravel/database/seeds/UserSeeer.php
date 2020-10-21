<?php

use App\Division;
use App\User;
use Illuminate\Database\Seeder;

class UserSeeer extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $x = 1;
        for($i=6; $i <= 8; $i++){
            User::create([
                'id' => $i,
                'username' => 'procurement_'.$x,
                'password' => bcrypt('procurement_'.$x++),
                'role' => 'user',
                'division_id' => Division::where('name', 'Procurement')->first()->id
            ]);
        }

        $x = 1;
        for($i=9; $i <= 15; $i++){
            User::create([
                'id' => $i,
                'username' => 'it_'.$x,
                'password' => bcrypt('it_'.$x++),
                'role' => 'user',
                'division_id' => Division::where('name', 'IT')->first()->id
            ]);
        }

        $x = 1;
        for($i=16; $i <= 18; $i++){
            User::create([
                'id' => $i,
                'username' => 'finance_'.$x,
                'password' => bcrypt('finance_'.$x++),
                'role' => 'user',
                'division_id' => Division::where('name', 'Finance')->first()->id
            ]);
        }

        $x = 1;
        for($i=19; $i <= 21; $i++){
            User::create([
                'id' => $i,
                'username' => 'hr_'.$i,
                'password' => bcrypt('hr_'.$i++),
                'role' => 'user',
                'division_id' => Division::where('name', 'HR')->first()->id
            ]);
        }
    }
}
