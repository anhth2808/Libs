/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FactoryMethod_Document;

/**
 *
 * @author Hoang Anh
 */
// ConcreteCreator
public class Resume extends Document{

    @Override
    public void CreatePage() {
        pages.add(new SkillsPage());
        pages.add(new EducationPage());
        pages.add(new ExperiencePage());        
    }
    
}
