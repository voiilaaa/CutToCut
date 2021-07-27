package com.brayenprayoga.barbershop;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import com.synnapps.carouselview.CarouselView;
import com.synnapps.carouselview.ImageListener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class home extends Fragment implements View.OnClickListener {

    CarouselView carouselView;

    int[] sampleImages = {R.drawable.image_1, R.drawable.image_2, R.drawable.image_3, R.drawable.image_4, R.drawable.image_5};

    ListView listView ;

    Dialog myDialog;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_home, container, false);

        myDialog = new Dialog(getActivity());

        if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 21) {
            setWindowFlag(getActivity(), WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS, true);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            getActivity().getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_STABLE | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN);
        }
        //make fully Android Transparent Status bar
        if (Build.VERSION.SDK_INT >= 21) {
            setWindowFlag(getActivity(), WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS, false);
            getActivity().getWindow().setStatusBarColor(Color.TRANSPARENT);
        }

        //GAMBAR SLIDE WITH CAROUSEL
        carouselView = (CarouselView)view.findViewById(R.id.carouselView1);
        carouselView.setPageCount(sampleImages.length);

        carouselView.setImageListener(imageListener);

        //BUTTON DITENGAH
        TextView but = view.findViewById(R.id.book);
        but.setOnClickListener(this);

        // Get ListView object from xml
        listView = (ListView) view.findViewById(R.id.list);

        // Defined Array values to show in ListView
        String[] values = new String[] {
                "WEBSITE",
                "INSTAGRAM",
                "FACEBOOK",
                "WHATSAPP",
                "ABOUT"
        };
        int[] images = new int[] {
                R.drawable.internet,
                R.drawable.instagram,
                R.drawable.facebook,
                R.drawable.whatsapp,
                R.drawable.barbershop,
        };

        List<HashMap<String,String>> alis = new ArrayList<HashMap<String, String>>();
        for (int i = 0; i<5; i++){
            HashMap<String,String> hm = new HashMap<String, String>();
            hm.put("text1" ,values[i]);
            hm.put("image1",Integer.toString(images[i]));
            alis.add(hm);
        }

        String[] from = {"text1","image1"};
        int[] to = {R.id.text1,R.id.image1};

        SimpleAdapter SA = new SimpleAdapter(getContext(),alis,R.layout.simple_list_item_1,from,to);

        // Assign adapter to ListVziew
        listView.setAdapter(SA);

        // ListView Item Click Listener
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {

            @Override
            public void onItemClick(AdapterView<?> parent, View view,
                                    int position, long id) {

                // ListView Clicked simple_list_item_1 index
                int itemPosition     = position;

                final int website = 0;
                final int ig = 1; //should be equal to the index in your array.
                final int fb = 2;
                final int wa = 3;
                final int about = 4;
                switch (itemPosition){
                    case website:
                        Intent websiteIntent =
                                new Intent("android.intent.action.VIEW",
                                        Uri.parse("https://cukur-245203.appspot.com/"));
                        startActivity(websiteIntent);
                        break;
                    case ig:
                        Intent igIntent =
                                new Intent("android.intent.action.VIEW",
                                        Uri.parse("https://www.instagram.com/yandy_blendz/?hl=id"));
                        startActivity(igIntent);
                        break;
                    case fb:
                        Intent fbIntent =
                                new Intent("android.intent.action.VIEW",
                                        Uri.parse("http://www.facebook.com"));
                        startActivity(fbIntent);
                        break;
                    case wa:
                        Intent waIntent =
                                new Intent("android.intent.action.VIEW",
                                        Uri.parse("https://api.whatsapp.com/send?phone=6289630022265"));
                        startActivity(waIntent);
                        break;
                    case about:
                        TextView txtclose;
                        Button btnFollow;
                        myDialog.setContentView(R.layout.custompopup);
                        txtclose =(TextView) myDialog.findViewById(R.id.txtclose);
                        txtclose.setText("X");
                        txtclose.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                myDialog.dismiss();
                            }
                        });
                        myDialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
                        myDialog.show();
                        myDialog.setCancelable(false);
                        break;
                }

            }

        });

        return view;
    }

    ImageListener imageListener = new ImageListener() {
        @Override
        public void setImageForPosition(int position, ImageView imageView) {
            imageView.setImageResource(sampleImages[position]);
        }
    };

    public static void setWindowFlag(Activity activity, final int bits, boolean on) {
        Window win = activity.getWindow();
        WindowManager.LayoutParams winParams = win.getAttributes();
        if (on) {
            winParams.flags |= bits;
        } else {
            winParams.flags &= ~bits;
        }
        win.setAttributes(winParams);
    }

    @Override
    public void onClick(View v) {
        Fragment fragment = null;
        switch (v.getId()) {
            case R.id.book:
                ((MainActivity)getActivity()).bottomNavigationView.setSelectedItemId(R.id.booking_menu);
                fragment = new booking();
        }
        loadFragment(fragment);
    }
    private boolean loadFragment(Fragment fragment) {
        if (fragment != null) {
            getFragmentManager().beginTransaction()
                    .replace(R.id.fl_container, fragment)
                    .commit();
            return true;
        }
        return false;
    }

    }
