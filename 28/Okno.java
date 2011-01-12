/**
 * Created by IntelliJ IDEA.
 * User: Milten
 * Date: 2010-11-25
 * Time: 14:50:12
 * University: UG
 */

import javax.swing.*;
import java.awt.*;
import java.math.BigInteger;

public class Okno {
    public static void main(String[] args) {
        Ramka ramka = new Ramka();
        ramka.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        ramka.setVisible(true);
        
    }
}

class Ramka extends JFrame {
    Ramka() {
        setSize(500, 400);
        setTitle("Kalkulator");
        Panel panel = new Panel();

        Container powZawartosci = getContentPane();
        powZawartosci.add(panel);
    }
}

class Panel extends JPanel {
    //public void paintComponent(Graphics g)

    private JTextField liczba1;
    private JTextField liczba2;
    private JTextField wynik;
    private JLabel wynikl;
	


    public Panel() {
        //setBackground(Color.PINK);
        JButton przycisk1 = new JButton("Dodaj");
        JButton przycisk2 = new JButton("Odejmij");
        JButton przycisk3 = new JButton("Pomnó¿");
        JButton przycisk4 = new JButton("Podziel");
        JButton przycisk5 = new JButton("Silnia");
        JButton przycisk6 = new JButton("N po K");

        add(przycisk1);
        add(przycisk2);
        add(przycisk3);
        add(przycisk4);
        add(przycisk5);
        add(przycisk6);

        liczba1 = new JTextField("liczba1", 40);
        liczba1.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyTyped(java.awt.event.KeyEvent e) {
                        if (e.getKeyChar() == '-'
                                && liczba1.getText().indexOf('-') > -1) {
                                e.consume();
                                return;
                        }
                        if (!(e.getKeyChar() >= '0' && e.getKeyChar() <= '9'))
                                e.consume();
                }
        });
        liczba2 = new JTextField("liczba1", 40);
        wynik = new JTextField("wynik", 40);
        wynikl = new JLabel();

        add(liczba1);
        add(liczba2);
        //add(wynik);
        add(wynikl);



        /*Dzialanie dzialanie1 = new Dzialanie(Color.BLUE);
 Dzialanie dzialanie2 = new Dzialanie(Color.BLACK);
 Dzialanie dzialanie3 = new Dzialanie(Color.WHITE);   */
        //NoweDzialanie dzialanie4 = new NoweDzialanie("ala ma kota");

        // przyciska.addActionListener(this);
        //  przycisk2.addActionListener(this);
        //przycisk3.addActionListener(this);
        // przycisk4.addActionListener(this);
        przycisk1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dodawanie(evt);
            }
        }
        );
        przycisk2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                odejmowanie(evt);
            }
        }
        );
        przycisk3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mnozenie(evt);
            }
        }
        );
        przycisk4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dzielenie(evt);
            }
        }
        );
        przycisk5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                silnia(evt);
            }
        }
        );
        przycisk6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dwumian(evt);
            }
        }
        );

    }


    private void dodawanie(java.awt.event.ActionEvent evt) {
        //wynik.setText("ala ma kota");
        String tekst1 = liczba1.getText();
        String tekst2 = liczba2.getText();
        BigInteger dliczba1 = new BigInteger(tekst1);
        BigInteger dliczba2 = new BigInteger(tekst2);
        DuzyInt licznik = new DuzyInt(dliczba1, dliczba2);
        BigInteger dwynik = licznik.getSuma();
        String w = dwynik.toString();
        wynikl.setText(w);
    }

    private void odejmowanie(java.awt.event.ActionEvent evt) {
        //wynik.setText("ala ma kota");
        String tekst1 = liczba1.getText();
        String tekst2 = liczba2.getText();
        BigInteger dliczba1 = new BigInteger(tekst1);
        BigInteger dliczba2 = new BigInteger(tekst2);
        DuzyInt licznik = new DuzyInt(dliczba1, dliczba2);
        BigInteger dwynik = licznik.getRoznica();
        String w = dwynik.toString();
        wynikl.setText(w);
    }

    private void mnozenie(java.awt.event.ActionEvent evt) {
        //wynik.setText("ala ma kota");
        String tekst1 = liczba1.getText();
        String tekst2 = liczba2.getText();
        BigInteger dliczba1 = new BigInteger(tekst1);
        BigInteger dliczba2 = new BigInteger(tekst2);
        DuzyInt licznik = new DuzyInt(dliczba1, dliczba2);
        BigInteger dwynik = licznik.getIliczyn();
        String w = dwynik.toString();
        wynikl.setText(w);
    }

    private void dzielenie(java.awt.event.ActionEvent evt) {
        //wynik.setText("ala ma kota");
        String tekst1 = liczba1.getText();
        String tekst2 = liczba2.getText();
        BigInteger dliczba1 = new BigInteger(tekst1);
        BigInteger dliczba2 = new BigInteger(tekst2);
        DuzyInt licznik = new DuzyInt(dliczba1, dliczba2);
        String w;
    
        if (dliczba2.equals(BigInteger.ZERO)) {
            w = "Dzielenie przez 0!";
        } else {
            BigInteger dwynik = licznik.getIloraz();
            w = dwynik.toString();
        }
        wynikl.setText(w);
    }

    private void silnia(java.awt.event.ActionEvent evt) {
        //wynik.setText("ala ma kota");
        String tekst1 = liczba1.getText();
        String tekst2 = liczba2.getText();
        BigInteger dliczba1 = new BigInteger(tekst1);
        BigInteger dliczba2 = new BigInteger(tekst2);
        DuzyInt licznik = new DuzyInt(dliczba1, dliczba2);
        BigInteger dwynik = licznik.getSilnia();
        String w = dwynik.toString();
        wynikl.setText(w);
    }
    private void dwumian(java.awt.event.ActionEvent evt) {
        //wynik.setText("ala ma kota");
        String tekst1 = liczba1.getText();
        String tekst2 = liczba2.getText();
        BigInteger dliczba1 = new BigInteger(tekst1);
        BigInteger dliczba2 = new BigInteger(tekst2);
        DuzyInt licznik = new DuzyInt(dliczba1, dliczba2);
        BigInteger dwynik = licznik.getNetwon();
        String w = dwynik.toString();
        wynikl.setText(w);
    }
}


/* public void actionPerformed(ActionEvent e) {
  Object zrodlo = e.getSource();
// if (zrodlo == przyciska);
setBackground(Color.BLUE);
}    */
//}
/*
private class Dzialanie implements ActionListener {
private Color kolorTla;
public Dzialanie(Color k) {
   kolorTla = k;
}
public void actionPerformed(ActionEvent zdarzenie) {
     liczba1.setText("ala ma kota");
   setBackground(kolorTla);

    repaint();
}
}     */
/*  private class NoweDzialanie implements ActionListener {
 private String nowyNapis;
 public NoweDzialanie(String s) {
     nowyNapis = s;

 }

 public void actionPerformed(ActionEvent zdarzenie) {

 panel.g.drawString(nowyNapis, 65, 200);
 }
}   */
//}