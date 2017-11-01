//
//  ViewController.swift
//  sims
//
//  Created by Anonymous on 10/7/17.
//  Copyright © 2017 Anonymous. All rights reserved.
//

import UIKit

var JNum = Int()
var JTemp: Int = -2
var JuneScore:Int = 0
var MNum = Int()
var MTemp: Int = -2
var MayScore:Int = 0
var ANum = Int()
var ATemp: Int = -2
var AprilScore:Int = 0
var VNum = Int()
var VTemp: Int = -2
var NovaScore:Int = 0

struct Question{
    var Ques : String!
    var Answers: [String]!
    var Answer: Int!
    }


var DrtIndex: Int = 0
var sIndex: Int = 0
var nIndex: Int = 0


class ViewController: UIViewController {
//Restart the Game
    @IBAction func NewG(_ sender: UIButton) {
    DrtIndex = 0
    sIndex = 0
    nIndex = 0
    JNum = -1
    JTemp = -2
    JuneScore = 0
    MNum = -1
    MTemp = -2
    MayScore = 0
    ANum = -1
    ATemp = -2
    AprilScore = 0
    VNum = -1
    VTemp = -2
    NovaScore = 0
    
    }

//Dr.Tao conversational part
    @IBOutlet var Drtlbl: UILabel!
    @IBOutlet var NotDrtlbl: UILabel!
    
    let Drt: [String] = [
        "Dr.Tao : Good morning, Kei.",
        "    ",
        "Dr.Tao : I have a very special case for you today.",
        "   ",
        "Dr.Tao: You’re going to help not one patient,",
        "Dr.Tao: but four patients today.",
        "   ",
        "Dr.Tao: You see Kei, ",
        "all the patients are come from the same person.",
        " ",
        "Dr Tao: Your patient suffers from",
        "the psychological condition",
        "Dr.Tao: Multi personality disorder.",
        " ",
        " ",
        " ",
        "Dr Tao: I know you just started Kei,",
        " but I believe you have what it takes,",
        "Dr.Tao: to give the right treatment.",
        " ",
        "Dr. Tao: Don’t worry Kei, there’s a reason",
        "Dr.Tao: I choose you to work in my clinic.",
        "I believe you have the power to help this patien.",
        " ",
        " ",
        "Dr. Tao: Thank you Kei,",
        "Dr.Tao: I knew I can count on you.",

        "Tap 'Next' to repeat"]
    
    let NotDrt: [String] = [
        "   ",
        "Kei: Good morning, Dr.Tao",
        "  ",
        "Kei: Oh! What kind of job do you have for me?",
        "    ",
        " ",
        "Kei: Four patients!? How is that even possible?",
        " ",
        " ",
        "Kei: I still don’t understand. ",
        " ",
        " ",
        " ",
        "Kei: Multi personality disorder!?",
        "I always read cases on that but I never thought,",
        "I would actually be handling a patient with one!",
        " ",
        " ",
        " ",
        "Kei: I’m not that confident in myself Dr. Tao…",
        " ",
        " ",
        " ",
        "Kei: Thanks Dr. Tao! I will do my best",
        "Kei: to help aid this patient!",
        " ",
        " ",
        "Tap 'Skip' for the next scene"]
    
    
    @IBAction func showDrt(_ sender: UIButton) {
        if DrtIndex == Drt.count {
            DrtIndex = 0 }
        let drt: String = Drt[DrtIndex]
        Drtlbl.text = drt
        let Ndrt: String = NotDrt[DrtIndex]
        NotDrtlbl.text = Ndrt
        DrtIndex += 1
        }

//Summer Conversational Part

    @IBOutlet var slbl: UILabel!
    @IBOutlet var Notslbl: UILabel!
    
    let Smr: [String] = [
        "???: ...",
        "    ",
        "???: ...",
        "   ",
        "???: It’s been awhile since I was awake. ",
        "???: Most of the time I am unconscious,",
        " and my other personalities have taken over.",
        "   ",
        "",
        "???: I don’t know who I am.",
        "???: I have four identities.",
        "???: Each of my identities can be conscious,",
        "???: only one at a time. ",
        "???: Right now this is the real me,",
        "the other four are standing by. ",
        " ",
        "???: ...",
        "",
        "???: I am scared.",
        "???: I remember what they said",
        "but I’m not sure of what they did.",
        "",
        "",
        "???: The only thing I can remember,",
        "???: is what they said but,",
        "anything else besides that I have no memory of…",
        "???: They are too different from me.",
        "???: They keep doing things I would never do.",
        "???: I wish they would just go away.",
        "",
        "",
        "???: .... ",
        "???: Sure...",
        "???: but beware that one of the,",
        "other personalities may take over at any time",
        "so you must be aware of who are you talking to.",


        "Tap 'Next' to repeat"]
//Kei's Narration Part
    let NotSmr: [String] = [
        "   ",
        "Kei: Hi, I’m Kei. I am your therapist.",
        "  ",
        "Kei: You seems to be really shy.",
        "    ",
        " ",
        " ",
        "Kei: Will you care to explain,",
        "about your personalities more?",
        " ",
        "",
        "",
        "",
        "",
        "",
        "Kei: What kind of personalities do you have?",
        "",
        "Kei: ....?",
        " ",
        "",
        "",
        "Kei: Then do you experience,",
        "the actions of the personalities as well?",
        "",
        "",
        "",
        "",
        "",
        "",
        "Kei: Thank you for the information.",
        "Will you let me meet each of your personalities?",
        "",
        "",
        "",
        "",
        "",
        
        "Tap 'Skip' for the next scene"]
    
    @IBAction func showSmr(_ sender: UIButton) {
        if sIndex == Smr.count {
            sIndex = 0 }
        let smr: String = Smr[sIndex]
        slbl.text = smr
        let Nsmr: String = NotSmr[sIndex]
        Notslbl.text = Nsmr        
        sIndex += 1
        }
    

    @IBOutlet var nlbl: UILabel!
    
    let Nar: [String] = [
        "I really want to help her so that she can be herself.",
        "I should try to talk with all of her personalities to,",
        "understand how each one is different from another.",
        "Kei: Since she is a multi personality disorder,",
        "I have to be aware of who I am talking to.",
        "However, I would be not able to talk to her until,",
        "I have spoken with all the other personalities.",
        "(All the conversations are auto-saved)",
        "Tap 'Next' to repeat or 'Skip'"]
    
    @IBAction func showNar(_ sender: UIButton) {
        if nIndex == Nar.count {
            nIndex = 0 }
        let nar: String = Nar[nIndex]
        nlbl.text = nar
        nIndex += 1
        }


//June
    @IBOutlet var jques: UILabel!
    @IBOutlet var jbtn1: UIButton!
    @IBOutlet var jbtn2: UIButton!
    @IBOutlet var jbtn3: UIButton!
    @IBOutlet var jtap: UILabel!
    @IBOutlet var jnext: UIButton!
    
    
    var JQues = [
        Question(Ques: "Hey dude. How's everything going? Cool?",
        Answers: ["Hi, I am your physican. Nice to meet you.","I am not your friend, dear.","Pretty girl should be more calm."],
        Answer: 1),
        Question(Ques: "Why are you so serious?",
        Answers: ["I am here to figure out your problem","How are you doing these days?","Be Quiet"],
        Answer: 0),
        Question(Ques: "Well I am being okay instead of her",
        Answers: ["Oh, you seems to be hard working ","Her? Who do you mean?","Don't over react"],
        Answer: 1),
        Question(Ques: "I hate just doing nothing and always obey other people",
        Answers: ["Same with me","Do you like leading other people?","You are totally a guy"],
        Answer: 2),
        Question(Ques: "Being a calm and feminen girl is not my type",
        Answers: ["No one can put a little bird in a cage","You are beautiful as you are","I don't like such a girl who act like a boy..."],
        Answer: 2)]

    @IBAction func june1(_ sender: AnyObject) {
        var Num = Int()
        if(JNum < 0){
            Num = 0
        }
        else{
        Num = JNum
        }
        jtap.text = "Tapped!"
        if(JNum < JQues.count){
            if (JQues[Num].Answer == 0){
                JuneScore += 7
        }
            else {
                NSLog("Wrong")
                JuneScore -= 3
            }
        }
        else{
        }

    }
    
    @IBAction func june2(_ sender: AnyObject) {
        var Num = Int()
        if(JNum < 0){
            Num = 0
        }
        else{
        Num = JNum
        }
        jtap.text = "Tapped!"
        if(JNum < JQues.count){
            if (JQues[Num].Answer == 1){
                JuneScore += 7
            }
            else {
                NSLog("Wrong")
                JuneScore -= 3
            }
        }
        else{
        }
    }
    
    @IBAction func june3(_ sender: AnyObject) {
        var Num = Int()
        if(JNum < 0){
            Num = 0
        }
        else{
        Num = JNum
        }
        jtap.text = "Tapped!"
        if(JNum < JQues.count){
            if (JQues[Num].Answer == 2){
                JuneScore += 7
            }
            else {
                NSLog("Wrong")
                JuneScore -= 3
                }
            }
        else{
        }

    }
    

    @IBAction func Jprevious(_ sender: AnyObject) {
        JNum = JTemp
        }
    
    @IBAction func Jrestart(_ sender: AnyObject){
        JNum = 0
        jtap.text = "Choose One!"
        jques.text = JQues[JNum].Ques
        jbtn1.backgroundColor = UIColor.white
        jbtn2.backgroundColor = UIColor.white
        jbtn3.backgroundColor = UIColor.white
        jbtn1.setTitle(JQues[JNum].Answers[0], for: UIControlState.normal)
        jbtn2.setTitle(JQues[JNum].Answers[1], for: UIControlState.normal)
        jbtn3.setTitle(JQues[JNum].Answers[2], for: UIControlState.normal)
        }
    
    
    @IBAction func JNext(_ sender: AnyObject) {
        jbtn1.backgroundColor = UIColor.white
        jbtn2.backgroundColor = UIColor.white
        jbtn3.backgroundColor = UIColor.white

        if(JNum == -1){
        JNum += 1
        }
        
        JTemp = JNum
        
        if(jtap.text == "Tapped!"){
            JNum += 1
            jtap.text = "Choose One!"
        }
        else if (jtap.text == "Choose One!"){
            jtap.text = "Not Yet!"
        }
        else if(jtap.text == "Not Yet!"){
        jtap.text = "Not Yet!"
        }
        else {
            jtap.text = "Choose One!"
        }

        
        if JNum == JQues.count{
            jques.text = "So what do you think of me?"
            jtap.text = "Ending"
            jbtn3.backgroundColor = UIColor.clear
            jbtn1.setTitle("Will you marry me?", for: UIControlState.normal)
            jbtn2.setTitle("I Just want to be your friend", for: UIControlState.normal)
            jbtn3.setTitle("", for: UIControlState.normal)
        }
        else if JNum > JQues.count{
            jbtn1.backgroundColor = UIColor.clear
            jbtn2.backgroundColor = UIColor.clear
            jbtn3.backgroundColor = UIColor.clear
            jques.text = ""
            jtap.text = ""
            jbtn1.setTitle("", for: UIControlState.normal)
            jbtn2.setTitle("", for: UIControlState.normal)
            jbtn3.setTitle("", for: UIControlState.normal)
            JNum = -1
        }
        else {
        jques.text = JQues[JNum].Ques
        jbtn1.setTitle(JQues[JNum].Answers[0], for: UIControlState.normal)
        jbtn2.setTitle(JQues[JNum].Answers[1], for: UIControlState.normal)
        jbtn3.setTitle(JQues[JNum].Answers[2], for: UIControlState.normal)
        
                }
            }


    
//May
    @IBOutlet var mques: UILabel!
    @IBOutlet var mbtn1: UIButton!
    @IBOutlet var mbtn2: UIButton!
    @IBOutlet var mbtn3: UIButton!
    @IBOutlet var mtap: UILabel!
    @IBOutlet var mnext: UIButton!
    
    var MQues = [
        Question(Ques: "Senpai! Gimme that dohnut!",
        Answers: ["Hi, I am your physican. Nice to meet you.","I will give you a box later my sweetie.","Cute girl should be more calm."],
        Answer: 1),
        Question(Ques: "Why are you so serious?",
        Answers: ["I am here to figure out your problem","How are you doing these days?","Be Quiet"],
        Answer: 0),
        Question(Ques: "Well I am being okay instead of her",
        Answers: ["Oh, you seems to be hard working ","Her? Who do you mean?","Don't over react"],
        Answer: 1),
        Question(Ques: "I hate just doing nothing and always obey other people",
        Answers: ["Same with me","Do you like leading other people?","You are totally a guy"],
        Answer: 2),
        Question(Ques: "Being a calm and feminen girl is not my type",
        Answers: ["No one can put a little bird in a cage","You are beautiful as you are","I don't like such a girl who act like a boy..."],
        Answer: 2)]

    @IBAction func may1(_ sender: AnyObject) {
        var Num = Int()
        if(MNum < 0){
            Num = 0
        }
        else{
        Num = MNum
        }
        mtap.text = "Tapped!"
        if(MNum < MQues.count){
            if (MQues[Num].Answer == 0){
                MayScore += 7
        }
            else {
                NSLog("Wrong")
                MayScore -= 3
            }
        }
        else{
        }

    }
    
    @IBAction func may2(_ sender: AnyObject) {
        var Num = Int()
        if(MNum < 0){
            Num = 0
        }
        else{
        Num = MNum
        }
        mtap.text = "Tapped!"
        if(MNum < MQues.count){
            if (MQues[Num].Answer == 1){
                MayScore += 7
        }
            else {
                NSLog("Wrong")
                MayScore -= 3
            }
        }
        else{
        }

    }
    
    
    @IBAction func may3(_ sender: AnyObject) {
        var Num = Int()
        if(MNum < 0){
            Num = 0
        }
        else{
        Num = MNum
        }
        mtap.text = "Tapped!"
        if(MNum < MQues.count){
            if (MQues[Num].Answer == 2){
                MayScore += 7
        }
            else {
                NSLog("Wrong")
                MayScore -= 3
            }
        }
        else{
        }

    }
    

    @IBAction func Mprevious(_ sender: AnyObject) {
        MNum = MTemp
    }
    
    @IBAction func Mrestart(_ sender: AnyObject){
        MNum = 0
        mtap.text = "Choose One!"
        mques.text = MQues[MNum].Ques
        mbtn1.backgroundColor = UIColor.white
        mbtn2.backgroundColor = UIColor.white
        mbtn3.backgroundColor = UIColor.white
        mbtn1.setTitle(MQues[MNum].Answers[0], for: UIControlState.normal)
        mbtn2.setTitle(MQues[MNum].Answers[1], for: UIControlState.normal)
        mbtn3.setTitle(MQues[MNum].Answers[2], for: UIControlState.normal)
        }
    
    
    @IBAction func MNext(_ sender: AnyObject) {
        mbtn1.backgroundColor = UIColor.white
        mbtn2.backgroundColor = UIColor.white
        mbtn3.backgroundColor = UIColor.white

        if(MNum == -1){
        MNum += 1
        }
        
        MTemp = MNum
        
        if(mtap.text == "Tapped!"){
            MNum += 1
            mtap.text = "Choose One!"
        }
        else if (mtap.text == "Choose One!"){
            mtap.text = "Not Yet!"
        }
        else if(mtap.text == "Not Yet!"){
        mtap.text = "Not Yet!"
        }
        else {
            mtap.text = "Choose One!"
        }

        
        if MNum == MQues.count{
            mques.text = "So what do you think of me?"
            mtap.text = "Ending"
            mbtn3.backgroundColor = UIColor.clear
            mbtn1.setTitle("Will you marry me?", for: UIControlState.normal)
            mbtn2.setTitle("I Just want to be your friend", for: UIControlState.normal)
            mbtn3.setTitle("", for: UIControlState.normal)
        }
        else if MNum > MQues.count{
            mbtn1.backgroundColor = UIColor.clear
            mbtn2.backgroundColor = UIColor.clear
            mbtn3.backgroundColor = UIColor.clear
            mques.text = ""
            mtap.text = ""
            mbtn1.setTitle("", for: UIControlState.normal)
            mbtn2.setTitle("", for: UIControlState.normal)
            mbtn3.setTitle("", for: UIControlState.normal)
            MNum = -1
        }
        else {
        mques.text = MQues[MNum].Ques
        mbtn1.setTitle(MQues[MNum].Answers[0], for: UIControlState.normal)
        mbtn2.setTitle(MQues[MNum].Answers[1], for: UIControlState.normal)
        mbtn3.setTitle(MQues[MNum].Answers[2], for: UIControlState.normal)
        
        }
    }
    
//April
    @IBOutlet var aques: UILabel!
    @IBOutlet var abtn1: UIButton!
    @IBOutlet var abtn2: UIButton!
    @IBOutlet var abtn3: UIButton!
    @IBOutlet var atap: UILabel!
    @IBOutlet var anext: UIButton!
    
    var AQues = [
        Question(Ques: "Hello, my name is April. How are you?",
        Answers: ["Hi, I am your physican. Nice to meet you.","You are so pretty. Do you have a boyfriend?","Girls should not wear the revealing clothes."],
        Answer: 1),
        Question(Ques: "Why are you so serious?",
        Answers: ["I am here to figure out your problem","How are you doing these days?","Be Quiet"],
        Answer: 0),
        Question(Ques: "Well I am being okay instead of her",
        Answers: ["Oh, you seems to be hard working ","Her? Who do you mean?","Don't over react"],
        Answer: 1),
        Question(Ques: "I hate just doing nothing and always obey other people",
        Answers: ["Same with me","Do you like leading other people?","You are totally a guy"],
        Answer: 2),
        Question(Ques: "Being a calm and feminen girl is not my type",
        Answers: ["No one can put a little bird in a cage","You are beautiful as you are","I don't like such a girl who act like a boy..."],
        Answer: 2)]

    @IBAction func april1(_ sender: AnyObject) {
        var Num = Int()
        if(ANum < 0){
            Num = 0
        }
        else{
        Num = MNum
        }
        atap.text = "Tapped!"
        if(ANum < AQues.count){
            if (AQues[Num].Answer == 0){
                AprilScore += 7
        }
            else {
                NSLog("Wrong")
                AprilScore -= 3
            }
        }
        else{
        }

    }
    
    @IBAction func april2(_ sender: AnyObject) {
        var Num = Int()
        if(ANum < 0){
            Num = 0
        }
        else{
        Num = ANum
        }
        atap.text = "Tapped!"
        if(ANum < AQues.count){
            if (AQues[Num].Answer == 1){
                AprilScore += 7
        }
            else {
                NSLog("Wrong")
                AprilScore -= 3
            }
        }
        else{
        }

    }
    
    
    @IBAction func april3(_ sender: AnyObject) {
        var Num = Int()
        if(ANum < 0){
            Num = 0
        }
        else{
        Num = ANum
        }
        atap.text = "Tapped!"
        if(ANum < AQues.count){
            if (AQues[Num].Answer == 2){
                AprilScore += 7
        }
            else {
                NSLog("Wrong")
                AprilScore -= 3
            }
        }
        else{
        }

    }
    

    @IBAction func Aprevious(_ sender: AnyObject) {
        ANum = ATemp
    }
    
    @IBAction func Arestart(_ sender: AnyObject){
        ANum = 0
        atap.text = "Choose One!"
        aques.text = AQues[ANum].Ques
        abtn1.backgroundColor = UIColor.white
        abtn2.backgroundColor = UIColor.white
        abtn3.backgroundColor = UIColor.white
        abtn1.setTitle(AQues[ANum].Answers[0], for: UIControlState.normal)
        abtn2.setTitle(AQues[ANum].Answers[1], for: UIControlState.normal)
        abtn3.setTitle(AQues[ANum].Answers[2], for: UIControlState.normal)
        }
    
    
    @IBAction func ANext(_ sender: AnyObject) {
        abtn1.backgroundColor = UIColor.white
        abtn2.backgroundColor = UIColor.white
        abtn3.backgroundColor = UIColor.white

        if(ANum == -1){
        ANum += 1
        }
        
        ATemp = ANum
        
        if(atap.text == "Tapped!"){
            ANum += 1
            atap.text = "Choose One!"
        }
        else if (atap.text == "Choose One!"){
            atap.text = "Not Yet!"
        }
        else if(atap.text == "Not Yet!"){
        atap.text = "Not Yet!"
        }
        else {
            atap.text = "Choose One!"
        }

        
        if ANum == AQues.count{
            aques.text = "So what do you think of me?"
            atap.text = "Ending"
            abtn3.backgroundColor = UIColor.clear
            abtn1.setTitle("Will you marry me?", for: UIControlState.normal)
            abtn2.setTitle("I Just want to be your friend", for: UIControlState.normal)
            abtn3.setTitle("", for: UIControlState.normal)
        }
        else if ANum > AQues.count{
            abtn1.backgroundColor = UIColor.clear
            abtn2.backgroundColor = UIColor.clear
            abtn3.backgroundColor = UIColor.clear
            aques.text = ""
            atap.text = ""
            abtn1.setTitle("", for: UIControlState.normal)
            abtn2.setTitle("", for: UIControlState.normal)
            abtn3.setTitle("", for: UIControlState.normal)
            ANum = -1
        }
        else {
        aques.text = AQues[ANum].Ques
        abtn1.setTitle(AQues[ANum].Answers[0], for: UIControlState.normal)
        abtn2.setTitle(AQues[ANum].Answers[1], for: UIControlState.normal)
        abtn3.setTitle(AQues[ANum].Answers[2], for: UIControlState.normal)
        
        }
    }
    
//Nova
    @IBOutlet var vques: UILabel!
    @IBOutlet var vbtn1: UIButton!
    @IBOutlet var vbtn2: UIButton!
    @IBOutlet var vbtn3: UIButton!
    @IBOutlet var vtap: UILabel!
    @IBOutlet var vnext: UIButton!
    
    var VQues = [
        Question(Ques: ".......",
        Answers: ["Hi, I am your physican. Nice to meet you.","You are so rude! Piss off.","I would like to have an eye contact with you."],
        Answer: 1),
        Question(Ques: "Why are you so serious?",
        Answers: ["I am here to figure out your problem","How are you doing these days?","Be Quiet"],
        Answer: 0),
        Question(Ques: "Well I am being okay instead of her",
        Answers: ["Oh, you seems to be hard working ","Her? Who do you mean?","Don't over react"],
        Answer: 1),
        Question(Ques: "I hate just doing nothing and always obey other people",
        Answers: ["Same with me","Do you like leading other people?","You are totally a guy"],
        Answer: 2),
        Question(Ques: "Being a calm and feminen girl is not my type",
        Answers: ["No one can put a little bird in a cage","You are beautiful as you are","I don't like such a girl who act like a boy..."],
        Answer: 2)]

    @IBAction func nova1(_ sender: AnyObject) {
        var Num = Int()
        if(VNum < 0){
            Num = 0
        }
        else{
        Num = VNum
        }
        vtap.text = "Tapped!"
        if(VNum < VQues.count){
            if (VQues[Num].Answer == 0){
                NovaScore += 7
        }
            else {
                NSLog("Wrong")
                NovaScore -= 3
            }
        }
        else{
        }

    }
    
    @IBAction func nova2(_ sender: AnyObject) {
        var Num = Int()
        if(VNum < 0){
            Num = 0
        }
        else{
        Num = VNum
        }
        vtap.text = "Tapped!"
        if(VNum < VQues.count){
            if (VQues[Num].Answer == 1){
                NovaScore += 7
        }
            else {
                NSLog("Wrong")
                NovaScore -= 3
            }
        }
        else{
        }

    }
    
    
    @IBAction func nova3(_ sender: AnyObject) {
        var Num = Int()
        if(VNum < 0){
            Num = 0
        }
        else{
        Num = VNum
        }
        vtap.text = "Tapped!"
        if(VNum < VQues.count){
            if (VQues[Num].Answer == 2){
                NovaScore += 7
        }
            else {
                NSLog("Wrong")
                NovaScore -= 3
            }
        }
        else{
        }

    }
    

    @IBAction func Vprevious(_ sender: AnyObject) {
        VNum = VTemp
    }
    
    @IBAction func Vrestart(_ sender: AnyObject){
        VNum = 0
        vtap.text = "Choose One!"
        vques.text = VQues[VNum].Ques
        vbtn1.backgroundColor = UIColor.white
        vbtn2.backgroundColor = UIColor.white
        vbtn3.backgroundColor = UIColor.white
        vbtn1.setTitle(VQues[VNum].Answers[0], for: UIControlState.normal)
        vbtn2.setTitle(VQues[VNum].Answers[1], for: UIControlState.normal)
        vbtn3.setTitle(VQues[VNum].Answers[2], for: UIControlState.normal)
        }
    
    
    @IBAction func VNext(_ sender: AnyObject) {
        vbtn1.backgroundColor = UIColor.white
        vbtn2.backgroundColor = UIColor.white
        vbtn3.backgroundColor = UIColor.white

        if(VNum == -1){
        VNum += 1
        }
        
        VTemp = VNum
        
        if(vtap.text == "Tapped!"){
            VNum += 1
            vtap.text = "Choose One!"
        }
        else if (vtap.text == "Choose One!"){
            vtap.text = "Not Yet!"
        }
        else if(vtap.text == "Not Yet!"){
        vtap.text = "Not Yet!"
        }
        else {
            vtap.text = "Choose One!"
        }

        
        if VNum == VQues.count{
            vques.text = "So what do you think of me?"
            vtap.text = "Ending"
            vbtn3.backgroundColor = UIColor.clear
            vbtn1.setTitle("Will you marry me?", for: UIControlState.normal)
            vbtn2.setTitle("I Just want to be your friend", for: UIControlState.normal)
            vbtn3.setTitle("", for: UIControlState.normal)
        }
        else if VNum > VQues.count{
            vbtn1.backgroundColor = UIColor.clear
            vbtn2.backgroundColor = UIColor.clear
            vbtn3.backgroundColor = UIColor.clear
            vques.text = ""
            vtap.text = ""
            vbtn1.setTitle("", for: UIControlState.normal)
            vbtn2.setTitle("", for: UIControlState.normal)
            vbtn3.setTitle("", for: UIControlState.normal)
            VNum = -1
        }
        else {
        vques.text = VQues[VNum].Ques
        vbtn1.setTitle(VQues[VNum].Answers[0], for: UIControlState.normal)
        vbtn2.setTitle(VQues[VNum].Answers[1], for: UIControlState.normal)
        vbtn3.setTitle(VQues[VNum].Answers[2], for: UIControlState.normal)
        
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          }

}





//17:03
//14:05

