//
//  HTTPClient.swift
//  AstroWeather
//
//  Created by Nofar Efraim on 27/02/2020.
//  Copyright © 2020 Nofar Efraim. All rights reserved.
//

import UIKit

protocol HTTPClient  {
typealias resultType = ((Data, HTTPURLResponse), Error) -> Void
    func some(url: URL, completion: @escaping (resultType?, Error?) -> Void)
}

