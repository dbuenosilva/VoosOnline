//
//  AppDelegate.swift
//  VoosOnline
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Wellington Antonio. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    public static var infraero = Infraero()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        // Cria dados estaticos.
        print("Criando Cias Aereas..." )
        let ciasAereas = [ "LATAM":     CiaAerea(1,"LATAM"),
                           "GOL":       CiaAerea(2,"GOL") ,
                           "PASSAREDO": CiaAerea(3,"PASSAREDO"),
                           "AVIANCA":   CiaAerea(4,"AVIANCA") ]
        
        print("Criando Aeroportos..." )
        let aeroportos = [ "GRU": AeroPorto(1,"GUARULHOS","GRU","SP"),
                           "CGA": AeroPorto(2,"CONGONHAS", "CGA","SP") ,
                           "GAO":AeroPorto(3,"GALEAO","GAO","RJ"),
                           "GYN":AeroPorto(4,"GOIANIA","GYN","GO"),
                           "BSB":AeroPorto(5,"BRASILIA","BSB","DF")]
        
        
        print("Instanciando infraero com lista de Voos vazia..." )
        
        
        /** cria os voos conforme aeroportos e cia da infraero */
        print("Adicionado voo SP-GO..." )
        AppDelegate.infraero.listaDeVoos.append( Voo(codigo: 1454,
                                         nome: "SP-GO",
                                         origem: aeroportos["GRU"]!,
                                         destino: aeroportos["GYN"]!,
                                         cia: ciasAereas["LATAM"]!) )
        
        print("Adicionado voo RJ-SP..." )
        AppDelegate.infraero.listaDeVoos.append( Voo(codigo: 1599,
                                         nome: "RJ-SP",
                                         origem: aeroportos["GAO"]!,
                                         destino: aeroportos["CGA"]!,
                                         cia: ciasAereas["GOL"]!) )
        print("Adicionado voo SP-RJ..." )
        AppDelegate.infraero.listaDeVoos.append( Voo(codigo: 1598,
                                         nome: "SP-RJ",
                                         origem: aeroportos["GRU"]!,
                                         destino: aeroportos["CGA"]!,
                                         cia: ciasAereas["GOL"]!) )
        print("Adicionado voo SP-GO..." )
        AppDelegate.infraero.listaDeVoos.append( Voo(codigo: 4566,
                                         nome: "SP-GO",
                                         origem: aeroportos["GRU"]!,
                                         destino: aeroportos["GYN"]!,
                                         cia: ciasAereas["GOL"]!) )
        print("Adicionado voo DF-GO..." )
        AppDelegate.infraero.listaDeVoos.append( Voo(codigo: 1454,
                                         nome: "DF-GO",
                                         origem: aeroportos["BSB"]!,
                                         destino: aeroportos["GYN"]!,
                                         cia: ciasAereas["LATAM"]!) )
        print("Adicionado voo GO-DF..." )
        AppDelegate.infraero.listaDeVoos.append( Voo(codigo: 1454,
                                         nome: "GO-DF",
                                         origem: aeroportos["BSB"]!,
                                         destino: aeroportos["GYN"]!,
                                         cia: ciasAereas["PASSAREDO"]!) )
        

        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

