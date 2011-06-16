blink :: Atom ()
blink = do
    isOn    <- bool "isOn" False
    doReset <- bool "doReset" False
    toggle  <- word16 "toggle" 1000 -- ticks

    -- Decrements the toggle counter when it is greater than 0.
    atom "decrement" $ do
        cond $ value toggle >. 0
        toggle <== value toggle - 1

    -- Toggle reset if needed
    atom "reset" $ do
        cond $ value doReset
        doReset <== Const False
        toggle  <== Const delayCycles
    
    -- Toggle LED if needed then reset
    atom "flip" $ do
        cond $ value toggle <=. 0
        setLED isOn
        isOn <== (not_ $ value isOn)
        doReset <== Const True
