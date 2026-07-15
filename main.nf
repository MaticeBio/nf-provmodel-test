#!/usr/bin/env nextflow
nextflow.enable.dsl = 2

process P_SPOT {
    script:
    """
    echo P_SPOT
    sleep 45
    """
}

process P_STD {
    script:
    """
    echo P_STD
    sleep 45
    """
}

process P_ONDEMAND {
    script:
    """
    echo P_ONDEMAND
    sleep 45
    """
}

process P_PREEMPT {
    script:
    """
    echo P_PREEMPT
    sleep 45
    """
}

process P_DEFAULT {
    script:
    """
    echo P_DEFAULT
    sleep 45
    """
}

workflow {
    P_SPOT()
    P_STD()
    P_ONDEMAND()
    P_PREEMPT()
    P_DEFAULT()
}
