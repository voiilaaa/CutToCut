package com.brayenprayoga.barbershop;

import android.os.Bundle;
import android.view.MenuItem;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

import com.google.android.material.bottomnavigation.BottomNavigationView;

public class MainActivity extends AppCompatActivity implements BottomNavigationView.OnNavigationItemSelectedListener {

    BottomNavigationView bottomNavigationView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //set default home
        loadFragment(new home());
        // inisialisasi BottomNavigaionView
        bottomNavigationView = findViewById(R.id.bn_main);
        // beri listener pada saat simple_list_item_1/menu bottomnavigation terpilih
        bottomNavigationView.setOnNavigationItemSelectedListener(this);
    }

    private boolean loadFragment(Fragment fragment) {
        if (fragment != null) {
            getSupportFragmentManager().beginTransaction()
                    .replace(R.id.fl_container, fragment)
                    .commit();
            return true;
        }
        return false;
    }

    public boolean onNavigationItemSelected(@NonNull MenuItem item) {

        Fragment fragment = null;
        switch (item.getItemId()){
            case R.id.home_menu:
                fragment = new home();
                break;
            case R.id.service_menu:
                fragment = new service();
                break;
            case R.id.style_menu:
                fragment = new style();
                break;
            case R.id.address_menu:
                fragment = new address();
                break;
            case R.id.booking_menu:
                fragment = new booking();
                break;
        }
        return loadFragment(fragment);}

    @Override
    public void onPointerCaptureChanged(boolean hasCapture) {

    }
}
