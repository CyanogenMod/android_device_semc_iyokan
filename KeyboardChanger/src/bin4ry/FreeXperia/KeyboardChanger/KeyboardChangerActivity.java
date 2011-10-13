package bin4ry.FreeXperia.KeyboardChanger;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;

import bin4ry.FreeXperia.KeyboardChanger.ShellCommand.CommandResult;

import android.app.Activity;
import android.os.Bundle;

import android.app.Activity; 
import android.os.Bundle; 
import android.view.View; 
import android.view.View.OnClickListener; 
import android.widget.Button;
import android.widget.RadioButton; 
import android.widget.TextView; 

public class KeyboardChangerActivity extends Activity {

	TextView currentKey;
    RadioButton qwertzRB; 
    RadioButton qwertyenRB; 
    RadioButton azertyRB;
    RadioButton qwertybrRB;
    RadioButton qwertynodkRB;
    RadioButton qwertysefiRB;
    RadioButton latinonarabicRB;
    RadioButton latinonarabicazertyRB;
    RadioButton latinonbopomofoRB;
    RadioButton latinoncyrillicRB;
    RadioButton latinongreekRB;
    RadioButton latinonhebrewRB;
    RadioButton latinonkoreanRB;
    RadioButton latinonpinyinRB;
    RadioButton latinonthaiRB;
    TextView sampleTV; 
    String oldlayout;
    String newlayout;
    Process p;
    DataOutputStream os;
    ShellCommand cmd = new ShellCommand();


    /** Called when the activity is first created. */ 
    @Override 
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState); 
        setContentView(R.layout.main); 

        /* 
         * Find the views declared in main.xml. 
         */ 
        currentKey = (TextView) findViewById(R.id.TVcurrent);
        qwertzRB = (RadioButton) findViewById(R.id.rbqwertz); 
        qwertyenRB = (RadioButton) findViewById(R.id.rbqwertyen); 
        azertyRB = (RadioButton) findViewById(R.id.rbazerty);
        qwertybrRB = (RadioButton) findViewById(R.id.rbqwertybr);
        qwertynodkRB = (RadioButton) findViewById(R.id.rbqwertynodk);
        qwertysefiRB = (RadioButton) findViewById(R.id.rbqwertysefi);
        latinonarabicRB = (RadioButton) findViewById(R.id.rblatinonarabic);
        latinonarabicazertyRB = (RadioButton) findViewById(R.id.rblatinonarabicazerty);
        latinonbopomofoRB = (RadioButton) findViewById(R.id.rblatinonbopomofo);
        latinoncyrillicRB = (RadioButton) findViewById(R.id.rblatinoncyrillic);
        latinongreekRB = (RadioButton) findViewById(R.id.rblatinongreek);
        latinonhebrewRB = (RadioButton) findViewById(R.id.rblatinonhebrew);
        latinonkoreanRB = (RadioButton) findViewById(R.id.rblatinonkorean);
        latinonpinyinRB = (RadioButton) findViewById(R.id.rblatinonpinyin);
        latinonthaiRB = (RadioButton) findViewById(R.id.rblatinonthai); 

        /* 
         * Set a listener that will listen for clicks on the radio buttons and 
         * perform suitable actions. 
         */ 
        qwertzRB.setOnClickListener(radio_listener); 
        qwertyenRB.setOnClickListener(radio_listener); 
        azertyRB.setOnClickListener(radio_listener); 
        qwertybrRB.setOnClickListener(radio_listener); 
        qwertynodkRB.setOnClickListener(radio_listener); 
        qwertysefiRB.setOnClickListener(radio_listener); 
        latinonarabicRB.setOnClickListener(radio_listener); 
        latinonarabicazertyRB.setOnClickListener(radio_listener); 
        latinonbopomofoRB.setOnClickListener(radio_listener); 
        latinoncyrillicRB.setOnClickListener(radio_listener); 
        latinongreekRB.setOnClickListener(radio_listener); 
        latinonhebrewRB.setOnClickListener(radio_listener); 
        latinonkoreanRB.setOnClickListener(radio_listener); 
        latinonpinyinRB.setOnClickListener(radio_listener); 
        latinonthaiRB.setOnClickListener(radio_listener); 

        Process r;
    	try {
        	String[] cmd = {
        			"/system/bin/sh",
        			"-c",
        			"cat /system/usr/keyboard-config/keyprint.xml | grep latin | awk '{print $3}' | sed -e 's/keylayout=\"//g' | sed -e 's/\"\\/>//g'"
        			};
			r = Runtime.getRuntime().exec(cmd);
			BufferedReader in = new BufferedReader(new
		            InputStreamReader(r.getInputStream()));
		        	 try { 
		                 oldlayout = in.readLine();
		                 currentKey.setText(oldlayout);
		        	 } catch (IOException e) {}
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
      setActiveButton(oldlayout);
      cmd.su.run("busybox mount -o remount,rw /dev/block/mtdblock0 /system");
        
      final Button button = (Button) findViewById(R.id.button1);
        button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                cmd.su.run("sed -i 's/" + oldlayout + "/" + newlayout + "/g' /system/usr/keyboard-config/keyprint.xml");
                try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                cmd.su.run("busybox mount -o remount,r0 /dev/block/mtdblock0 /system");
                try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                cmd.su.run("reboot");
                }
        }); 
        } 

    private void setActiveButton (String s){
    	if (s.equals("qwertz")) {
    		qwertzRB.toggle();
    	};
    	if (s.equals("qwerty-en")) {
    		qwertyenRB.toggle();
    	}; 
    	if (s.equals("azerty")) {
    		azertyRB.toggle();
    	};
    	if (s.equals("qwerty-br")) {
    		qwertybrRB.toggle();
    	}; 
    	if (s.equals("qwerty-no-dk")) {
    		qwertynodkRB.toggle();
    	}; 
    	if (s.equals("qwerty-se-fi")) {
    		qwertysefiRB.toggle();
    	}; 
    	if (s.equals("latin-on-arabic")) {
    		latinonarabicRB.toggle();
    	}; 
    	if (s.equals("latin-on-arabic-azerty")) {
    		latinonarabicazertyRB.toggle();
    	}; 
    	if (s.equals("latin-on-bopomofo")) {
    		latinonbopomofoRB.toggle();
    	}; 
    	if (s.equals("latin-on-cyrillic")) {
    		latinoncyrillicRB.toggle();
    	}; 
    	if (s.equals("latin-on-greek")) {
    		latinongreekRB.toggle();
    	}; 
    	if (s.equals("latin-on-hebrew")) {
    		latinonhebrewRB.toggle();
    	}; 
    	if (s.equals("latin-on-korean")) {
    		latinonkoreanRB.toggle();
    	}; 
    	if (s.equals("latin-on-pinyin")) {
    		latinonpinyinRB.toggle();
    	}; 
    	if (s.equals("latin-on-thai")) {
    		latinonthaiRB.toggle();
    	}; 
    }
    
    
    /* 
     * Define a OnClickListener that will change the size of the sample text 
     * depending on which of the radio button that has been clicked. 
     */ 
    private OnClickListener radio_listener = new OnClickListener() {
        public void onClick(View v) { 
            ShellCommand cmd = new ShellCommand();
            switch (v.getId()) { 
            case R.id.rbqwertz: 
                newlayout = "qwertz";
                break; 
            case R.id.rbqwertyen: 
            	newlayout = "qwerty-en";
                break; 
            case R.id.rbazerty: 
            	newlayout = "azerty";
                break;
            case R.id.rbqwertybr: 
                    newlayout = "qwerty-br";
                break; 
            case R.id.rbqwertynodk: 
                    newlayout = "qwerty-no-dk";
                break; 
            case R.id.rbqwertysefi: 
                    newlayout = "qwerty-se-fi";
                break; 
            case R.id.rblatinonarabic: 
                    newlayout = "latin-on-arabic";
                break; 
            case R.id.rblatinonarabicazerty: 
                    newlayout = "latin-on-arabic-azerty";
                break; 
            case R.id.rblatinonbopomofo: 
                    newlayout = "latin-on-bopomofo";
                break; 
            case R.id.rblatinoncyrillic: 
                    newlayout = "latin-on-cyrillic";
                break; 
            case R.id.rblatinongreek: 
                    newlayout = "latin-on-greek";
                break; 
            case R.id.rblatinonhebrew: 
                    newlayout = "latin-on-hebrew";
                break; 
            case R.id.rblatinonkorean: 
                    newlayout = "latin-on-korean";
                break; 
            case R.id.rblatinonpinyin:
                    newlayout = "latin-on-pinyin";
                break; 
            case R.id.rblatinonthai: 
                    newlayout = "latin-on-thai";
                break; 
           default: 
            } 
        } 
    }; 
}