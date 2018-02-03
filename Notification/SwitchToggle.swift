//
//  SwitchToggle.swift
//  AmberApp
//
//  Created by Avishek Maitra on 1/29/18.
//  Copyright © 2018 QL+. All rights reserved.
//

import Foundation
import UIKit

func SwitchToggle(SceneName: String) -> Array<Bool>
{
    var i = 0
    var SceneSwitchChange = [Bool]()
    while(i<SceneNameFill.count)
    {
        if(SceneName==SceneNameFill[i])
        {
            if(SetSceneFill[i]==false)
            {
                SceneSwitchChange.append(true)
            }
            else
            {
                SceneSwitchChange.append(false)
            }
        }
        else
        {
            SceneSwitchChange.append(false)
        }
        i = i + 1
    }
    return SceneSwitchChange
}
