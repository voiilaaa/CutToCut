package com.brayenprayoga.barbershop;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;

import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.Calendar;

public class booking extends Fragment {

    EditText txtName, txtEmail, txtPhone ,txtStatus;
    Spinner txtService, txtWaktu;
    static EditText txtTgl;
    Button btntgl;
    Button book;
    DatabaseReference reff;
    GetSet getSet;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_booking, container, false);

        btntgl = view.findViewById(R.id.btnTgl);

        btntgl.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                DialogFragment newFragment = new SelectDateFragment();
                newFragment.show(getFragmentManager(), "DatePicker");
            }
        });

        txtName = view.findViewById(R.id.nama);
        txtEmail = view.findViewById(R.id.email);
        txtPhone = view.findViewById(R.id.phone);
        txtTgl = view.findViewById(R.id.tgl);
        txtWaktu = view.findViewById(R.id.waktu);
        txtService = view.findViewById(R.id.service);
        book = view.findViewById(R.id.booking);
        txtStatus = view.findViewById(R.id.status);
        getSet = new GetSet();
        reff = FirebaseDatabase.getInstance().getReference().child("booking");



        book.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String nama = txtName.getText().toString().trim();
                String email = txtEmail.getText().toString().trim();
                String phone = txtPhone.getText().toString().trim();
                String tgl = txtTgl.getText().toString().trim();
                String emailPattern = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";
                String phonePattern = "^[+]?[0-9]{10,13}$";
                if(nama.isEmpty() && email.isEmpty() && phone.isEmpty() && tgl.isEmpty()) {
                    Toast.makeText(getActivity().getApplicationContext(),"Data Tidak Boleh Kosong",Toast.LENGTH_SHORT).show();
                }else {
                    if (email.matches(emailPattern)) {
                        if (phone.matches(phonePattern)) {
                            Toast.makeText(getActivity().getApplicationContext(), "valid email address", Toast.LENGTH_SHORT).show();

                            getSet.setNama(txtName.getText().toString().trim());
                            getSet.setEmail(txtEmail.getText().toString().trim());
                            getSet.setPhone(txtPhone.getText().toString().trim());
                            getSet.setTgl(txtTgl.getText().toString().trim());
                            getSet.setWaktu(txtWaktu.getSelectedItem().toString().trim());
                            getSet.setService(txtService.getSelectedItem().toString().trim());
                            getSet.setStatus(txtStatus.getText().toString().trim());

                            reff.push().setValue(getSet);
                            Toast.makeText(getActivity(), "Insert Success", Toast.LENGTH_LONG).show();
                            txtName.setText(null);
                            txtEmail.setText(null);
                            txtPhone.setText(null);
                            txtTgl.setText(null);
                            txtWaktu.setSelection(0);
                            txtService.setSelection(0);
                        }else {
                            Toast.makeText(getActivity().getApplicationContext(), "Invalid Your Phone", Toast.LENGTH_SHORT).show();
                        }
                    } else {
                        Toast.makeText(getActivity().getApplicationContext(), "Invalid email address", Toast.LENGTH_SHORT).show();
                    }
                }


            }
        });

        return view;
    }

    public static class SelectDateFragment extends DialogFragment implements DatePickerDialog.OnDateSetListener {

        @Override
        public Dialog onCreateDialog(Bundle savedInstanceState) {
            final Calendar calendar = Calendar.getInstance();
            int yy = calendar.get(Calendar.YEAR);
            int mm = calendar.get(Calendar.MONTH);
            int dd = calendar.get(Calendar.DAY_OF_MONTH);
            DatePickerDialog dpd = new DatePickerDialog(getActivity(),this,yy,mm,dd);
            dpd.getDatePicker().setMinDate(calendar.getTimeInMillis());
            return dpd;
        }

        public void onDateSet(DatePicker view, int yy, int mm, int dd) {
            populateSetDate(yy, mm+1, dd);
        }
        public void populateSetDate(int year, int month, int day) {
            txtTgl.setText(month+"/"+day+"/"+year);
        }

    }
}
