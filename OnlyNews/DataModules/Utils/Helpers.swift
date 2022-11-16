//
//  Helpers.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 16/11/22.
//

import Foundation

func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    let documentsDirectory = paths[0]
    return documentsDirectory
}
