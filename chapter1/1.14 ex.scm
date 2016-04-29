                       (11,5) ;return 4

                 ;return 4       ;return 0   
                 (11,4)            (-39,5)

           ;return 4   ;return 0
            (11,3)      (-14,4)

        ;return 3  ;return 1
        (11,2)     (1,3)
                     ...
   ;return 1 ;return 2
    (11,1)   (6,2)
                ...
;return 0      ;return 1
(11,0)         (10,1)
                .....





;the space required by the count-change procedure grows linearly with the input. 
;The space required is proportional to the maximum depth of the tree. 
;At any point in the computation we only need to keep track of the nodes above the current node.

;Since the height of the tree is proportional to the amount to be changed, 
;the order of growth of the space required by the count-change procedure is O(n). 
                
