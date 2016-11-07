//
//  remote.swift
//  Guaka
//
//  Created by Omar Abdelhafith on 05/11/2016.
//
//

import Guaka

var remote: Command!

// Autogenerated but you can edit

func createRemote() {
  remote = Command(
    name: "remote") { flags, args in
        print("Running git with \(flags) and \(args)")
  }
  
  root.add(subCommands: remote)
  
  
  // user will add these
  
  [
    Flag(longName: "foo", value: "-", inheritable: true),
    Flag(longName: "remote", value: true, inheritable: true),
    Flag(longName: "bar", value: "-", inheritable: false),
    Flag(longName: "xx", value: true, inheritable: false),
    ].forEach { remote.add(flag: $0) }
}
