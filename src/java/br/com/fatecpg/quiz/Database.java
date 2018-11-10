/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;

/**
 *
 * @author mateus
 */
public class Database {

    private static ArrayList<User> users = new ArrayList<>();

    public static ArrayList<User> getUsers() {

        users.add(new User("Anderson"));
        users.add(new User("Guilherme"));
        users.add(new User("Mateus"));
        users.add(new User("Weslley"));

        return users;

    }

    public static boolean searchUser(String user) {

        for (User u : Database.getUsers()) {

            if (u.getName().equals(user) == true) {
                return u.getName().contains(user);
            }

        }

        return false;

    }
    public static ArrayList<Question> getQuestions(){

	ArrayList<Question> questions = new ArrayList<>();

	questions.add(new Question ("O que você coloca em uma torradeira?", "Torrada", new String[]{"Bolo","Pão","Torresmo","Torrada"}));
	questions.add(new Question ("Um avião fazia um voo de Curitiba para São Paulo. Acontece que, no meio da viagem, houve uma falha mecânica, e a aeronave caiu exatamente na fronteira do Paraná com São Paulo. Onde devem ser enterrados os sobreviventes?", "Não é necessário enterrá-los", new String[]{"Em São Paulo","No Paraná","No Rio de Janeiro","Não é necessário enterrá-los"}));
	questions.add(new Question ("Alguns meses têm 30 dias e outros, 31. Quantos meses têm 28 dias durante um período de três anos?", "36", new String[]{"32","50","3","36"}));
	questions.add(new Question ("Você fica doente, e o médico diz para você tomar 3 comprimidos, um a cada 10 horas. Se você tomar um agora, quanto tempo vai demorar para terminar o tratamento?", "20", new String[]{"10","30","40","20"}));
	questions.add(new Question ("Você está participando de uma corrida e, antes de cruzar a linha de chegada, ultrapassa o segundo colocado. Em que posição você fica?", "Segunda", new String[]{"Primeira","Terceira","Quarta","Segunda"}));
	questions.add(new Question ("Quantas vezes é possível subtrair 10 de 100?", "1", new String[]{"10","90","100","1"}));
	questions.add(new Question ("Um trem elétrico segue no sentido norte-sul. O vento está no sentido contrário, ou seja, sul-norte. Qual a direção da fumaça desse trem?", "Nenhuma das duas", new String[]{"Sul","Norte","Nordeste","Nenhuma das duas"}));
	questions.add(new Question ("A mãe de Fernando tem três filhos. O primeiro se chama Março e o segundo se chama Abril. Qual é o nome do terceiro?", "Fernando", new String[]{"Junho","Julio","Marco","Fernando"}));
	questions.add(new Question ("O que pesa mais?", "Nenhum", new String[]{"Uma tonelada de Pedras","Uma tonelada de ferro","Uma tonelada de algodão","Nenhum"}));
	questions.add(new Question ("Você está em casa e acaba a luz, mas você está com uma caixa de fósforos na mão, ao lado de uma vela e um fogão a gás. O que você acende primeiro?", "Nenhum", new String[]{"A vela","O fogão","Nenhum"}));

	Collections.shuffle(questions);
	
	return questions;

    }
    
    private static final ArrayList<Historic> historics = new ArrayList<>();
    
    public static ArrayList<Historic> getHistoric(){
        
        Calendar cal = Calendar.getInstance();
        
        if (historics.isEmpty()) {
            
            cal.set(2012, 2, 20, 20, 39);
            historics.add(new Historic ("Mateus", 5.5, cal.getTime()));
            
            cal.set(2016, 2, 10, 10, 23);
            historics.add(new Historic ("Anderson", 9.0, cal.getTime())); 
            
            cal.set(2012, 2, 10, 5, 3);
            historics.add(new Historic ("Weslley", 7.0, cal.getTime())); 
            
            cal.set(2018, 2, 15, 5, 19);
            historics.add(new Historic ("Guilherme", 9.5, cal.getTime()));
            
            cal.set(2017, 9, 14, 15, 29);
            historics.add(new Historic ("Paolla", 6.5, cal.getTime()));

        }
        
        return historics;
        
    }
    
    
}