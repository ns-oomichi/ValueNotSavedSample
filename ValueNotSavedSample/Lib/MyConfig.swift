//
//  MyConfig.swift
//  ValueNotSavedSample
//
//  Created by Ryo Oomichi on 2020/01/17.
//  Copyright © 2020 Ryo Oomichi. All rights reserved.
//

import Keys

struct MyConfig {
    static var variable: String {
        let keys = ValueNotSavedSampleKeys()
        return keys.mySecretValue
    }
}
