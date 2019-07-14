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
public class Report extends Document{

    @Override
    public void CreatePage() {
        pages.add(new IntroductionPage());
        pages.add(new ResultPage());
        pages.add(new ConclusionPage());
        pages.add(new SumaryPage());
        pages.add(new BibliographyPage());
    }
    
}
