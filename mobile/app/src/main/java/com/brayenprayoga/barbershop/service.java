package com.brayenprayoga.barbershop;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;


public class service extends Fragment implements View.OnClickListener {


    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_service, container, false);

        CardView card1 = view.findViewById(R.id.card1);
        card1.setOnClickListener(this);
        CardView card2 = view.findViewById(R.id.card2);
        card2.setOnClickListener(this);
        CardView card3 = view.findViewById(R.id.card3);
        card3.setOnClickListener(this);
        CardView card4 = view.findViewById(R.id.card4);
        card4.setOnClickListener(this);

        return view;
    }
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.card1:
                Toast.makeText(service.this.getActivity(), "$2.50"
                        , Toast.LENGTH_LONG).show();
                break;
            case R.id.card2:
                Toast.makeText(service.this.getActivity(), "$7"
                        , Toast.LENGTH_LONG).show();
                break;
            case R.id.card3:
                Toast.makeText(service.this.getActivity(), "$5"
                        , Toast.LENGTH_LONG).show();
                break;
            case R.id.card4:
                Toast.makeText(service.this.getActivity(), "$4"
                        , Toast.LENGTH_LONG).show();
                break;
        }
    }

}
