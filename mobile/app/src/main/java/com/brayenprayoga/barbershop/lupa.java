package com.brayenprayoga.barbershop;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;

public class lupa extends AppCompatActivity {

    private Button send;
    private EditText email;
    private FirebaseAuth mAuth;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lupa);

        mAuth = FirebaseAuth.getInstance();

        send = findViewById(R.id.sendEmail);
        email = findViewById(R.id.writeEmail);

        send.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String userEmail = email.getText().toString();

                if (TextUtils.isEmpty(userEmail)){
                    Toast.makeText(lupa.this, "Please Enter Email"
                            ,Toast.LENGTH_LONG).show();
                }else{
                    mAuth.sendPasswordResetEmail(userEmail).addOnCompleteListener(new OnCompleteListener<Void>() {
                        @Override
                        public void onComplete(@NonNull Task<Void> task) {

                            if (task.isSuccessful()){
                                Toast.makeText(lupa.this, "Check Your Email Message to reset your password"
                                        ,Toast.LENGTH_LONG).show();
                                startActivity(new Intent(lupa.this, login.class));
                            }else{
                                String message = task.getException().getMessage();
                                Toast.makeText(lupa.this, "Error Brooo....."+ message
                                        ,Toast.LENGTH_LONG).show();
                            }
                        }
                    });
                }
            }
        });
    }
}
